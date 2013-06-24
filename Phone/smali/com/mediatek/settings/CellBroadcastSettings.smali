.class public Lcom/mediatek/settings/CellBroadcastSettings;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final CB_MAX_CHANNEL:I = 0xffff

.field private static final CHANNEL_NAME_LENGTH:I = 0x14

.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final DBG:Z = true

.field public static final DEFAULT_SIM:I = 0x2

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final KEY_ADD_CHANNEL:Ljava/lang/String; = "button_add_channel"

.field private static final KEY_CHANNEL_LIST:Ljava/lang/String; = "menu_channel_list"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "button_language"

.field private static final LANGUAGE_NUM:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastSettings"

.field private static final MENU_CHANNEL_DELETE:I = 0xc

.field private static final MENU_CHANNEL_EDIT:I = 0xb

.field private static final MENU_CHANNEL_ENABLE_DISABLE:I = 0xa

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private mAddChannelPreference:Landroid/preference/PreferenceScreen;

.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelListPreference:Landroid/preference/PreferenceCategory;

.field private mChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/settings/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePreference:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 108
    sget-object v0, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 114
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    .line 127
    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CellBroadcastSettings$1;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 611
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelUIList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/CellBroadcastSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/CellBroadcastSettings;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/settings/CellBroadcastSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->queryChannelFromDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initChannelMap()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/settings/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguageSummary()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/settings/CellBroadcastSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/settings/CellBroadcastSettings;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CellBroadcastSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->checkChannelIdExist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/CellBroadcastSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkChannelIdExist(I)Z
    .locals 3
    .parameter "channelId"

    .prologue
    .line 985
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 986
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 987
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 988
    const/4 v2, 0x1

    .line 991
    :goto_1
    return v2

    .line 986
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkChannelIdExist(II)Z
    .locals 6
    .parameter "newChannelId"
    .parameter "keyId"

    .prologue
    .line 995
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 996
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 997
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 998
    .local v2, tChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 999
    .local v3, tempChannelId:I
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 1000
    .local v4, tempKeyId:I
    if-ne v3, p1, :cond_0

    if-eq v4, p2, :cond_0

    .line 1001
    const/4 v5, 0x1

    .line 1004
    .end local v2           #tChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3           #tempChannelId:I
    .end local v4           #tempKeyId:I
    :goto_1
    return v5

    .line 996
    .restart local v2       #tChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v3       #tempChannelId:I
    .restart local v4       #tempKeyId:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    .end local v2           #tChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3           #tempChannelId:I
    .end local v4           #tempKeyId:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkChannelName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 964
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 965
    :cond_0
    const-string p1, ""

    .line 967
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 968
    const/4 v0, 0x0

    .line 970
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChannelNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 974
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v1

    .line 977
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 978
    .local v0, t:I
    const v2, 0xffff

    if-ge v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 981
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearChannel()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    :cond_0
    return-void
.end method

.method private deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 5
    .parameter "oldChannel"

    .prologue
    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 894
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 895
    return-void
.end method

.method private displayMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 899
    return-void
.end method

.method private dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 603
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump start for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump end for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 272
    if-eqz p1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    invoke-virtual {v1, v3, v4, v3, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V

    .line 284
    :goto_1
    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 287
    :cond_0
    return-void

    .line 275
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;
    .locals 1
    .parameter "key"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    return-object v0
.end method

.method private getChannelObjectFromMapKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;
    .locals 2
    .parameter "key"

    .prologue
    .line 455
    new-instance v0, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v0}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 456
    .local v0, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 461
    .restart local v0       #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    :goto_0
    return-object v0

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;
    .locals 1
    .parameter "key"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastLanguage;

    return-object v0
.end method

.method private initChannelMap()V
    .locals 6

    .prologue
    .line 446
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    .line 447
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 448
    .local v2, tSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 449
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 450
    .local v1, id:I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method private initLanguage()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageList()V

    .line 725
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguageMap()V

    .line 726
    return-void
.end method

.method private initLanguageList()V
    .locals 11

    .prologue
    const/16 v10, 0x16

    .line 698
    new-array v4, v10, [Z

    .line 699
    .local v4, languageEnable:[Z
    new-array v5, v10, [Ljava/lang/String;

    .line 700
    .local v5, languageId:[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    .line 701
    .local v6, languageName:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 702
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 703
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 704
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 705
    .local v2, id:I
    aget-object v7, v6, v1

    .line 706
    .local v7, name:Ljava/lang/String;
    aget-boolean v0, v4, v1

    .line 707
    .local v0, enable:Z
    new-instance v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-direct {v3, v2, v7, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;-><init>(ILjava/lang/String;Z)V

    .line 708
    .local v3, language:Lcom/mediatek/settings/CellBroadcastLanguage;
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0           #enable:Z
    .end local v2           #id:I
    .end local v3           #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initLanguageMap()V
    .locals 5

    .prologue
    .line 713
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    .line 714
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x16

    if-ge v0, v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 716
    .local v2, language:Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v1

    .line 718
    .local v1, id:I
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .end local v1           #id:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .end local v2           #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "button_language"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    .line 173
    const-string v0, "button_add_channel"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    .line 174
    const-string v0, "menu_channel_list"

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    .line 175
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    return-void
.end method

.method private insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 253
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "number"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v2, "enable"

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .parameter "channel"

    .prologue
    const/4 v3, -0x1

    .line 363
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 364
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 365
    .local v1, tChannelId:I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 366
    return-object v6
.end method

.method private makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 13

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 857
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 860
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 861
    .local v0, cBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v0           #cBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    return-object v1

    .line 863
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v3

    .line 864
    .local v3, beginId:I
    move v4, v3

    .line 865
    .local v4, endId:I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v5

    .line 866
    .local v5, beginState:Z
    const/4 v6, 0x2

    .line 867
    .local v6, i:I
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 868
    .local v9, tSize:I
    const/4 v6, 0x2

    :goto_1
    if-ge v6, v9, :cond_3

    .line 869
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 870
    .local v8, tLanguage:Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v10

    .line 871
    .local v10, tempId:I
    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v11

    .line 872
    .local v11, tempState:Z
    add-int/lit8 v2, v4, 0x1

    if-ne v10, v2, :cond_2

    if-ne v5, v11, :cond_2

    .line 873
    move v4, v10

    .line 868
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 875
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 876
    .restart local v0       #cBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    move v3, v10

    .line 878
    move v4, v10

    .line 879
    move v5, v11

    goto :goto_2

    .line 883
    .end local v0           #cBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v8           #tLanguage:Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v10           #tempId:I
    .end local v11           #tempState:Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v4

    .line 885
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 886
    .restart local v0       #cBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryChannelFromDatabase()Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 488
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->clearChannel()V

    .line 489
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 491
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 492
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 493
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 495
    .local v6, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 496
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 497
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 499
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v6           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v0, v10

    .line 506
    .end local v8           #e:Ljava/lang/Exception;
    :goto_2
    return v0

    .restart local v6       #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v0, v10

    .line 498
    goto :goto_1

    .line 501
    .end local v6           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v9

    .line 506
    goto :goto_2
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 371
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 373
    return-void
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 5
    .parameter "objectList"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 845
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mHandler:Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/mediatek/settings/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 846
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 852
    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/settings/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 853
    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private setLanguageSummary([Z)V
    .locals 8
    .parameter "temp"

    .prologue
    const/4 v7, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    .line 222
    .local v0, allLanguagesFlag:Z
    array-length v5, p1

    .line 223
    .local v5, tLength:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 224
    aget-boolean v6, p1, v2

    if-nez v6, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 229
    :cond_1
    aput-boolean v0, p1, v7

    .line 230
    aget-boolean v6, p1, v7

    if-eqz v6, :cond_3

    .line 231
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0d0106

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_3
    const/4 v1, 0x0

    .line 235
    .local v1, flag:I
    const-string v4, ""

    .line 236
    .local v4, summary:Ljava/lang/String;
    const/4 v3, -0x1

    .line 237
    .local v3, lastIndex:I
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_5

    .line 238
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 241
    move v3, v2

    .line 243
    :cond_4
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private setScreenEnabled()V
    .locals 3

    .prologue
    .line 1012
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1013
    .local v0, insertSim:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1014
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->finish()V

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1016
    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-eq v2, v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->finish()V

    goto :goto_0
.end method

.method private showAddChannelDialog()V
    .locals 6

    .prologue
    .line 301
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 302
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04002e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 304
    .local v3, setView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 306
    const v4, 0x7f0d00f9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    const v4, 0x104000a

    new-instance v5, Lcom/mediatek/settings/CellBroadcastSettings$3;

    invoke-direct {v5, p0, v3}, Lcom/mediatek/settings/CellBroadcastSettings$3;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    const/high16 v4, 0x104

    new-instance v5, Lcom/mediatek/settings/CellBroadcastSettings$4;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/CellBroadcastSettings$4;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 357
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 358
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 359
    return-void
.end method

.method private showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V
    .locals 15
    .parameter "oldChannel"

    .prologue
    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v12

    .line 377
    .local v12, keyId:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v8

    .line 378
    .local v8, cid:I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, cname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v7

    .line 380
    .local v7, checked:Z
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 381
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 382
    .local v13, setView:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 384
    const v0, 0x7f0d00ff

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 385
    const v0, 0x7f0800d0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 387
    .local v2, channelName:Landroid/widget/EditText;
    const v0, 0x7f0800d1

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 389
    .local v3, channelNum:Landroid/widget/EditText;
    const v0, 0x7f0800d2

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 391
    .local v4, channelState:Landroid/widget/CheckBox;
    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 395
    const v14, 0x104000a

    new-instance v0, Lcom/mediatek/settings/CellBroadcastSettings$5;

    move-object v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/settings/CellBroadcastSettings$5;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    const/high16 v0, 0x104

    new-instance v1, Lcom/mediatek/settings/CellBroadcastSettings$6;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/CellBroadcastSettings$6;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 441
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 442
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 443
    return-void
.end method

.method private showLanguageSelectDialog()V
    .locals 12

    .prologue
    const/16 v8, 0x16

    const/4 v11, 0x0

    .line 752
    new-array v6, v8, [Z

    .line 753
    .local v6, temp:[Z
    new-array v7, v8, [Z

    .line 754
    .local v7, temp2:[Z
    const/4 v0, 0x1

    .line 755
    .local v0, allLanguagesFlag:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 756
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 757
    .local v5, tLanguage:Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v5, :cond_1

    .line 758
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v6, v2

    .line 760
    invoke-virtual {v5}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 764
    :goto_1
    aget-boolean v8, v6, v2

    if-nez v8, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    :cond_1
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showLanguageSelectDialog() init the language list failed when i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 769
    .end local v5           #tLanguage:Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_2
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 771
    aput-boolean v0, v6, v11

    .line 772
    aput-boolean v0, v7, v11

    .line 773
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 774
    .local v1, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0d00fb

    invoke-virtual {p0, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 775
    const v8, 0x7f0d01b7

    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$7;

    invoke-direct {v9, p0, v6, v7}, Lcom/mediatek/settings/CellBroadcastSettings$7;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z[Z)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    const v8, 0x7f0d01bb

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 813
    new-instance v4, Lcom/mediatek/settings/CellBroadcastSettings$8;

    invoke-direct {v4, p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings$8;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;[Z)V

    .line 837
    .local v4, multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    const v8, 0x7f07000c

    invoke-virtual {v1, v8, v6, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 839
    .local v3, languageDialog:Landroid/app/AlertDialog;
    if-eqz v3, :cond_3

    .line 840
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 842
    :cond_3
    return-void
.end method

.method private showUpdateDBErrorInfoDialog()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 266
    return-void
.end method

.method private updateChannelEnableState(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 466
    .local v6, number:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 467
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 468
    .local v0, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    .line 469
    .local v2, channelObjectBeginIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    .line 470
    .local v3, channelObjectEndIndex:I
    move v5, v2

    .local v5, j:I
    :goto_1
    if-gt v5, v3, :cond_1

    .line 471
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->getChannelObjectFromMapKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;

    move-result-object v1

    .line 472
    .local v1, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 470
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 475
    :cond_0
    const-string v7, "Settings/CellBroadcastSettings"

    const-string v8, "updateChannelEnableState(): object is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 466
    .end local v1           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    .end local v0           #cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v2           #channelObjectBeginIndex:I
    .end local v3           #channelObjectEndIndex:I
    .end local v5           #j:I
    :cond_2
    return-void
.end method

.method private updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z
    .locals 13
    .parameter "oldChannel"
    .parameter "newChannel"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 510
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v10

    const-string v8, "name"

    aput-object v8, v5, v9

    const/4 v8, 0x2

    const-string v11, "number"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "enable"

    aput-object v11, v5, v8

    .line 511
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 512
    .local v2, id:I
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v1

    .line 514
    .local v1, enable:Z
    invoke-virtual {p2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 515
    .local v4, number:I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v8, "name"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v8, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string v11, "enable"

    if-eqz v1, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v11, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v6, v7, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_1
    return v9

    .end local v7           #where:Ljava/lang/String;
    :cond_0
    move v8, v10

    .line 519
    goto :goto_0

    .line 523
    .restart local v7       #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v9, v10

    .line 524
    goto :goto_1
.end method

.method private updateChannelUIList()V
    .locals 11

    .prologue
    .line 181
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 183
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 184
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, channel:Landroid/preference/Preference;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v5

    .line 186
    .local v5, keyId:I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, channelName:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 188
    .local v1, channelId:I
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    .line 189
    .local v3, channelState:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    new-instance v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v7, v5, v1, v2, v3}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 192
    .local v7, oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v3, :cond_0

    .line 193
    const v9, 0x7f0d020c

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 198
    :goto_1
    new-instance v9, Lcom/mediatek/settings/CellBroadcastSettings$2;

    invoke-direct {v9, p0, v7}, Lcom/mediatek/settings/CellBroadcastSettings$2;-><init>(Lcom/mediatek/settings/CellBroadcastSettings;Lcom/mediatek/settings/CellBroadcastChannel;)V

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v9, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const v9, 0x7f0d020d

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 206
    .end local v0           #channel:Landroid/preference/Preference;
    .end local v1           #channelId:I
    .end local v2           #channelName:Ljava/lang/String;
    .end local v3           #channelState:Z
    .end local v5           #keyId:I
    .end local v7           #oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v8           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 540
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 541
    .local v1, channelBeginIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 542
    .local v2, channelEndIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    .line 543
    .local v6, state:Z
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateChannelsWithSingleConfig STATE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 546
    move v3, v1

    .local v3, j:I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 547
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, jStr:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/mediatek/settings/CellBroadcastSettings;->getChannelObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastChannel;

    move-result-object v0

    .line 549
    .local v0, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, v6}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 546
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 553
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0d0107

    invoke-virtual {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, tName:Ljava/lang/String;
    new-instance v5, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v5, v3, v7, v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 555
    .local v5, newChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-direct {p0, v5}, Lcom/mediatek/settings/CellBroadcastSettings;->insertChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    .line 558
    :cond_1
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v8, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 563
    .end local v0           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v3           #j:I
    .end local v4           #jStr:Ljava/lang/String;
    .end local v5           #newChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v7           #tName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 600
    :cond_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 594
    .local v2, number:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 595
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 596
    .local v1, info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 597
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 598
    invoke-direct {p0, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLanguageChecked(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 738
    .local v6, number:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 739
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 740
    .local v0, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 741
    .local v4, languageBeginIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 742
    .local v5, languageEndIndex:I
    move v2, v4

    .local v2, j:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 743
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v3

    .line 744
    .local v3, language:Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v3, :cond_0

    .line 745
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 742
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 738
    .end local v3           #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v0           #cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v2           #j:I
    .end local v4           #languageBeginIndex:I
    .end local v5           #languageEndIndex:I
    :cond_2
    return-void
.end method

.method private updateLanguageSummary()V
    .locals 4

    .prologue
    .line 209
    const/16 v3, 0x16

    new-array v2, v3, [Z

    .line 210
    .local v2, temp:[Z
    array-length v1, v2

    .line 211
    .local v1, tLength:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageState()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->setLanguageSummary([Z)V

    .line 215
    return-void
.end method

.method private updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, -0x2

    .line 566
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 567
    .local v4, languageBeginIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 568
    .local v5, languageEndIndex:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-eq v4, v8, :cond_1

    .line 569
    move v1, v4

    .local v1, j:I
    :goto_0
    if-gt v1, v5, :cond_3

    .line 570
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v3

    .line 571
    .local v3, language:Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v3, :cond_0

    .line 572
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 569
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v1           #j:I
    .end local v3           #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_1
    const-string v6, "Settings/CellBroadcastSettings"

    const-string v7, "Select all language!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-ne v4, v8, :cond_3

    if-ne v5, v8, :cond_3

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 579
    iget-object v6, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/settings/CellBroadcastLanguage;

    .line 580
    .restart local v3       #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    invoke-virtual {v3}, Lcom/mediatek/settings/CellBroadcastLanguage;->getLanguageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/settings/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/mediatek/settings/CellBroadcastLanguage;

    move-result-object v2

    .line 581
    .local v2, lang:Lcom/mediatek/settings/CellBroadcastLanguage;
    if-eqz v2, :cond_2

    .line 582
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/mediatek/settings/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 578
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 587
    .end local v0           #i:I
    .end local v2           #lang:Lcom/mediatek/settings/CellBroadcastLanguage;
    .end local v3           #language:Lcom/mediatek/settings/CellBroadcastLanguage;
    :cond_3
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    .line 903
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 904
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v0, -0x3

    .line 905
    .local v6, index:I
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 906
    .local v11, oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 936
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 908
    :pswitch_0
    new-instance v8, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v8}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 909
    .local v8, newChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    move-object v8, v11

    .line 910
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {v8, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 911
    invoke-virtual {v11}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 912
    .local v1, tempOldChannelId:I
    new-array v9, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 913
    .local v9, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v8}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v9, v12

    .line 915
    invoke-direct {p0, v11, v8}, Lcom/mediatek/settings/CellBroadcastSettings;->updateChannelToDatabase(Lcom/mediatek/settings/CellBroadcastChannel;Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    invoke-direct {p0, v9}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .end local v1           #tempOldChannelId:I
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    move v0, v12

    .line 910
    goto :goto_1

    .line 918
    .restart local v1       #tempOldChannelId:I
    .restart local v9       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 922
    .end local v1           #tempOldChannelId:I
    .end local v8           #newChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :pswitch_1
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->showEditChannelDialog(Lcom/mediatek/settings/CellBroadcastChannel;)V

    goto :goto_0

    .line 925
    :pswitch_2
    invoke-virtual {v11, v12}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 926
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    .line 927
    .local v10, objectList1:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v11}, Lcom/mediatek/settings/CellBroadcastSettings;->deleteChannelFromDatabase(Lcom/mediatek/settings/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    invoke-direct {p0, v10}, Lcom/mediatek/settings/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .line 930
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 144
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    .line 145
    iget v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 146
    sget-object v2, Lcom/mediatek/settings/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 149
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    const-string v2, "CellBroadcastSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 152
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initPreference()V

    .line 154
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->initLanguage()V

    .line 155
    invoke-virtual {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CellBroadcastSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/CellBroadcastSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x0

    .line 941
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 942
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 943
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 944
    const-string v5, "Settings/CellBroadcastSettings"

    const-string v6, "onCreateContextMenu,menuInfo is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 948
    .local v4, position:I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 949
    add-int/lit8 v2, v4, -0x3

    .line 950
    .local v2, index:I
    iget-object v5, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 951
    .local v0, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 952
    .local v1, channelName:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 953
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 954
    const v5, 0x7f0d020d

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 958
    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0xb

    const v7, 0x7f0d0100

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 959
    const/4 v5, 0x2

    const/16 v6, 0xc

    const v7, 0x7f0d0101

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 956
    :cond_2
    const v5, 0x7f0d020c

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 290
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showLanguageSelectDialog()V

    .line 297
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/mediatek/settings/CellBroadcastSettings;->showAddChannelDialog()V

    goto :goto_0

    .line 297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    .line 164
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1008
    iput p1, p0, Lcom/mediatek/settings/CellBroadcastSettings;->mSimId:I

    .line 1009
    return-void
.end method
