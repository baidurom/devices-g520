.class public Lcom/mediatek/settings/CallRejectListSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallRejectListSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;,
        Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;
    }
.end annotation


# static fields
.field public static final CACHED_FORMATTED_NUMBER:I = 0xf

.field public static final CACHED_LOOKUP_URI:I = 0xb

.field public static final CACHED_MATCHED_NUMBER:I = 0xc

.field public static final CACHED_NAME:I = 0x8

.field public static final CACHED_NORMALIZED_NUMBER:I = 0xd

.field public static final CACHED_NUMBER_LABEL:I = 0xa

.field public static final CACHED_NUMBER_TYPE:I = 0x9

.field public static final CACHED_PHOTO_ID:I = 0xe

.field private static final CALLER_DATA_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLLOG_URI:Landroid/net/Uri; = null

.field private static final CALLSVIEW_DATA_ID_COLUMN:I = 0x2

.field private static final CALLSVIEW_ID_COLUMN:I = 0x0

.field private static final CALLSVIEW_NUMBER_COLUMN:I = 0x1

.field private static final CALL_LIST_DIALOG_EDIT:I = 0x0

.field private static final CALL_LIST_DIALOG_SELECT:I = 0x1

.field private static final CALL_LIST_DIALOG_WAIT:I = 0x2

.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_LOG_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String; = null

.field private static final CALL_REJECT_CONTACTS_REQUEST:I = 0x7d

.field private static final CALL_REJECT_LOG_REQUEST:I = 0x7e

.field public static final CALL_TYPE:I = 0x4

.field private static final CONTACTS_ADD_ACTION:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIPHONES"

.field private static final CONTACTS_ADD_ACTION_RESULT:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"

.field private static final CONTACT_NAME_COLUMN:I = 0x3

.field private static final CONTACT_URI:Landroid/net/Uri; = null

.field public static final COUNTRY_ISO:I = 0x5

.field private static final DATA_DATA1_COLUMN:I = 0x1

.field private static final DATA_DATA2_COLUMN:I = 0x2

.field private static final DATA_ID_COLUMN:I = 0x0

.field private static final DATA_RAW_CONTACT_ID_COLUMN:I = 0x3

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field private static final EVENT_HANDLER_MESSAGE_WAIT:I = 0x0

.field public static final GEOCODED_LOCATION:I = 0x7

.field public static final ID:I = 0x0

.field private static final ID_INDEX:I = 0x0

.field public static final IS_READ:I = 0x10

.field private static final MENU_ID_ADD:I = 0x3

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final NAME_INDEX:I = 0x3

.field public static final NUMBER:I = 0x1

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PHONE_ID_COLUMN:I = 0x0

.field private static final PHONE_LABEL_COLUMN:I = 0x2

.field private static final PHONE_NUMBER_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallRejectListSetting"

.field private static final TYPE_INDEX:I = 0x2

.field private static final URI:Landroid/net/Uri; = null

.field public static final VOICEMAIL_URI:I = 0x6

.field private static final mCallRejectViewCallLogUri:Landroid/net/Uri;


# instance fields
.field private mAddBtn:Landroid/widget/Button;

.field private mAddContactsBtn:Landroid/widget/ImageButton;

.field private mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mDialogCancelBtn:Landroid/widget/Button;

.field private mDialogSaveBtn:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mNumberEditText:Landroid/widget/EditText;

.field private mPhoneNumberFromContacts:Ljava/lang/String;

.field private mResultIntent:Landroid/content/Intent;

.field private mType:Ljava/lang/String;

.field private mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v0, "content://reject/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    .line 54
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLLOG_URI:Landroid/net/Uri;

    .line 67
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lookup_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "matched_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "formatted_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_DATA_ID_PROJECTION:[Ljava/lang/String;

    .line 128
    const-string v0, "content://call_log/callsjoindataview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->mCallRejectViewCallLogUri:Landroid/net/Uri;

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "data_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    .line 152
    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/CallRejectListSetting;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/CallRejectListSetting;->updataCallback(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/CallRejectListSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mediatek/settings/CallRejectListSetting;->showNumbers()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/CallRejectListSetting;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->updateUICallback(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/CallRejectListSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private allWhite(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 738
    :cond_0
    return-object p1
.end method

.method private equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "number1"
    .parameter "number2"

    .prologue
    .line 675
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 676
    :cond_0
    const/4 v0, 0x0

    .line 685
    :goto_0
    return v0

    .line 678
    :cond_1
    const/4 v0, 0x0

    .line 680
    .local v0, isEquals:Z
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 689
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "Number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    const-string v1, "Type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :goto_0
    const-string v1, "Name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 698
    return-void

    .line 694
    :cond_0
    const-string v1, "Type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "Number"

    aput-object v4, v2, v11

    const-string v4, "type"

    aput-object v4, v2, v12

    const/4 v4, 0x3

    const-string v5, "Name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 672
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 658
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 660
    .local v7, id:Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, numberDB:Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 663
    .local v9, type:Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/mediatek/settings/CallRejectListSetting;->equalsNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    invoke-direct {p0, v7, p1, p2, v9}, Lcom/mediatek/settings/CallRejectListSetting;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 670
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #numberDB:Ljava/lang/String;
    .end local v9           #type:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/CallRejectListSetting;->insert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNumbers()V
    .locals 13

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 378
    .local v11, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 380
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 404
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, id:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, numberDB:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 391
    .local v12, type:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, name:Ljava/lang/String;
    const-string v0, "3"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "voice"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    :cond_2
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 396
    .local v10, preference:Landroid/preference/Preference;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 400
    .end local v10           #preference:Landroid/preference/Preference;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 402
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #numberDB:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private updataCallback(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 504
    packed-switch p2, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 506
    :pswitch_0
    const/16 v3, 0x7d

    if-ne p1, v3, :cond_1

    .line 507
    const-string v3, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 508
    .local v1, contactId:[J
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ltz v3, :cond_0

    .line 511
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v3}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    aget-wide v3, v1, v2

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->updateContactsNumbers(I)V

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 514
    .end local v1           #contactId:[J
    .end local v2           #i:I
    :cond_1
    const/16 v3, 0x7e

    if-ne p1, v3, :cond_0

    .line 515
    const-string v3, "calllogids"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, callLogId:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->updateCallLogNumbers(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "number"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 732
    :goto_0
    return-void

    .line 704
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "Number"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v4, 0x0

    .line 710
    .local v4, typeInt:I
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 715
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 716
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 722
    const-string v5, "Name"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_1
    :try_start_1
    sget-object v5, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 727
    .local v2, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 728
    .local v3, result:I
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 729
    .end local v2           #existNumberURI:Landroid/net/Uri;
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 730
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 711
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 712
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the typeInt is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 718
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "Type"

    or-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updateCallLogNumbers(I)V
    .locals 24
    .parameter "id"

    .prologue
    .line 547
    sget-object v3, Lcom/mediatek/settings/CallRejectListSetting;->CALLLOG_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 548
    .local v4, existNumberURI:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/mediatek/settings/CallRejectListSetting;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 549
    .local v13, cursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 550
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "----updateCallLogNumbers---[calllogid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v18, ""

    .line 553
    .local v18, data_id:Ljava/lang/String;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 554
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 555
    .local v21, number:Ljava/lang/String;
    const/16 v3, 0x8

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 556
    .local v20, name:Ljava/lang/String;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 559
    :cond_1
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers----[number:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]---[name"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-[calllogid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]-----"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-object v3, Lcom/mediatek/settings/CallRejectListSetting;->mCallRejectViewCallLogUri:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 562
    .local v6, viewexistNumberURI:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/mediatek/settings/CallRejectListSetting;->CALL_PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 564
    .local v23, viewcursor:Landroid/database/Cursor;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 566
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 567
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 568
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 569
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers1----[number:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]----[data_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]----"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :cond_2
    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 575
    const-string v22, ""

    .line 576
    .local v22, raw_id:Ljava/lang/String;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 577
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 578
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers:-------[data_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]--------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 601
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d00d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 602
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers::-------[raw_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]--------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 629
    .end local v6           #viewexistNumberURI:Landroid/net/Uri;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #raw_id:Ljava/lang/String;
    .end local v23           #viewcursor:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 631
    return-void

    .line 572
    .restart local v6       #viewexistNumberURI:Landroid/net/Uri;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v21       #number:Ljava/lang/String;
    .restart local v23       #viewcursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 629
    .end local v6           #viewexistNumberURI:Landroid/net/Uri;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #number:Ljava/lang/String;
    .end local v23           #viewcursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 581
    .restart local v6       #viewexistNumberURI:Landroid/net/Uri;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v21       #number:Ljava/lang/String;
    .restart local v22       #raw_id:Ljava/lang/String;
    .restart local v23       #viewcursor:Landroid/database/Cursor;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_DATA_ID_PROJECTION:[Ljava/lang/String;

    const-string v10, "_id=?"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 587
    .local v14, cursorData_id:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7

    .line 590
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 591
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 592
    .local v16, data1:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 593
    .local v17, data2:Ljava/lang/String;
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers2:data_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "raw_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 596
    .end local v16           #data1:Ljava/lang/String;
    .end local v17           #data2:Ljava/lang/String;
    :cond_7
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 605
    .end local v14           #cursorData_id:Landroid/database/Cursor;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v9, v3

    const/4 v3, 0x1

    const-string v5, "data1"

    aput-object v5, v9, v3

    const/4 v3, 0x2

    const-string v5, "raw_contact_id"

    aput-object v5, v9, v3

    const-string v10, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v22, v11, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 611
    .local v15, cursorName:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 612
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCallLogNumbers3..raw_id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "--MIMETYPE:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 614
    :goto_2
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 615
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 616
    .local v19, data_idt:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 617
    const-string v3, "CallRejectListSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TestModify3..name:name:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "data_idt:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 621
    .end local v19           #data_idt:Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1
.end method

.method private updateCallLogNumbers(Ljava/lang/String;)V
    .locals 8
    .parameter "callLogId"

    .prologue
    .line 526
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---------["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]----------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    :cond_0
    return-void

    .line 530
    :cond_1
    const-string v5, "_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 533
    const/16 v5, 0x8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, ids:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 535
    .local v4, idsArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v5}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 537
    :try_start_0
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v7, v4, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 538
    .local v2, id:I
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->updateCallLogNumbers(I)V

    .line 539
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v2           #id:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "CallRejectListSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseInt failed, the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateContactsNumbers(I)V
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 634
    sget-object v0, Lcom/mediatek/settings/CallRejectListSetting;->CONTACT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 635
    .local v1, existNumberURI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/settings/CallRejectListSetting;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 637
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 641
    .local v8, number:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, name:Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 646
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 648
    return-void
.end method

.method private updateShowNumbers()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 287
    new-instance v0, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    .line 288
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method private updateUICallback(II)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/settings/CallRejectListSetting;->URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 284
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_9

    .line 233
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, number:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 235
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, type:Ljava/lang/String;
    const-string v0, "3"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "voice"

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    :cond_3
    const-string v0, "CallRejectListSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUICallback0-------[number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 282
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 243
    .restart local v9       #name:Ljava/lang/String;
    .restart local v11       #number:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    .local v7, cursorName:Landroid/database/Cursor;
    const-string v13, ""

    .line 250
    .local v13, tempNumber:Ljava/lang/String;
    const-string v12, ""

    .line 251
    .local v12, tempName:Ljava/lang/String;
    move-object v10, v9

    .line 252
    .local v10, newName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 253
    .local v8, isExsit:Z
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :goto_3
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 257
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    const-string v0, "CallRejectListSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUICallback1..tempName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 261
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    const/4 v8, 0x1

    .line 268
    :cond_6
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 271
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 265
    :cond_7
    move-object v10, v12

    goto :goto_4

    .line 271
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 273
    if-nez v8, :cond_4

    .line 274
    const-string v0, "CallRejectListSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUICallback2..newName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, v11, v10}, Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 282
    .end local v7           #cursorName:Landroid/database/Cursor;
    .end local v8           #isExsit:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #newName:Ljava/lang/String;
    .end local v11           #number:Ljava/lang/String;
    .end local v12           #tempName:Ljava/lang/String;
    .end local v13           #tempNumber:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 495
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v0, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    .line 499
    iput-object p3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;

    .line 500
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mDeleteBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, it:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/settings/CallRejectListModify;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 459
    const-string v1, "type"

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    .line 467
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 462
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 464
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V

    .line 465
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 295
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setContentView(I)V

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 298
    .local v1, preference:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 300
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mListView:Landroid/widget/ListView;

    .line 301
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    .line 303
    const-string v2, "voice"

    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 309
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 311
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 313
    :cond_0
    return-void

    .line 306
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 408
    if-nez p1, :cond_2

    .line 410
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/mediatek/settings/CallRejectListSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 411
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d02a2

    new-instance v5, Lcom/mediatek/settings/CallRejectListSetting$1;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/CallRejectListSetting$1;-><init>(Lcom/mediatek/settings/CallRejectListSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01bb

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d00d2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040003

    invoke-virtual {v1, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 430
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 431
    const v3, 0x7f080011

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    .line 432
    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 433
    iget-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :cond_0
    const v3, 0x7f080010

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;

    .line 451
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    :goto_0
    return-object v0

    .line 437
    :cond_2
    if-ne p1, v5, :cond_3

    .line 438
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 439
    .restart local v0       #dialog:Landroid/app/Dialog;
    const v3, 0x7f040004

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 441
    const v3, 0x7f080013

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 442
    .local v2, listview:Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 444
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v2           #listview:Landroid/widget/ListView;
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 445
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 448
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 341
    const v0, 0x7f0d00d0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 343
    const/4 v0, 0x3

    const v1, 0x7f0d00d1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 345
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 330
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->cancel(Z)Z

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mUpdatUIContactsTask:Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallRejectListSetting$UpdateUIContactsTask;->cancel(Z)Z

    .line 337
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 471
    if-nez p3, :cond_1

    .line 472
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.contacts.list.PICKMULTIPHONES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const/16 v2, 0x7d

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 476
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CallRejectListSetting"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    if-ne p3, v2, :cond_0

    .line 481
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.contacts"

    const-string v3, "com.mediatek.contacts.activities.CallLogMultipleChoiceActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const/16 v2, 0x7e

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 486
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 487
    :catch_1
    move-exception v0

    .line 488
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CallRejectListSetting"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 373
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 360
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/CallRejectListSetting;->showDialog(I)V

    goto :goto_0

    .line 363
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/CallRejectListModify;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v0, it:Landroid/content/Intent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v0}, Lcom/mediatek/settings/CallRejectListSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 368
    .end local v0           #it:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->finish()V

    .line 369
    const/4 v1, 0x1

    goto :goto_1

    .line 358
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 350
    const-string v2, "CallRejectListSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[preference count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/settings/CallRejectListSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 352
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 353
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/CallRejectListSetting;->mAddContactsTask:Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;

    invoke-virtual {v0}, Lcom/mediatek/settings/CallRejectListSetting$AddContactsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 320
    const-string v0, "CallRejectListSetting"

    const-string v1, "onResume-------no update again--------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/CallRejectListSetting;->updateShowNumbers()V

    .line 324
    const-string v0, "CallRejectListSetting"

    const-string v1, "onResume---------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
