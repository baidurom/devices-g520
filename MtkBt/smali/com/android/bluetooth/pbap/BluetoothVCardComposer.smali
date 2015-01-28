.class public Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
.super Ljava/lang/Object;
.source "BluetoothVCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothVCardComposer$HandlerForOutputStream;,
        Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field private static final CALLER_NAME_COLUMN_INDEX:I = 0x3

.field private static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x5

.field private static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x4

.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x2

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field public static final COUNT_NO_LIMIT:I = -0x1

.field private static final DATA_REQUEST_URI:Landroid/net/Uri; = null

.field private static final DATE_COLUMN_INDEX:I = 0x1

.field private static final DEFAULT_EMAIL_TYPE:Ljava/lang/String; = "INTERNET"

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FLAG_TIMEZONE_UTC:Ljava/lang/String; = "Z"

.field private static final IM_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothVCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final NUMBER_COLUMN_INDEX:I = 0x0

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field public static final VCARD_ATTRIB_ADR:I = 0x20

.field public static final VCARD_ATTRIB_AGENT:I = 0x8000

.field public static final VCARD_ATTRIB_BDAY:I = 0x10

.field public static final VCARD_ATTRIB_CATEGORIES:I = 0x1000000

.field public static final VCARD_ATTRIB_CLASS:I = 0x4000000

.field public static final VCARD_ATTRIB_EMAIL:I = 0x100

.field public static final VCARD_ATTRIB_FN:I = 0x2

.field public static final VCARD_ATTRIB_GEO:I = 0x800

.field public static final VCARD_ATTRIB_KEY:I = 0x400000

.field public static final VCARD_ATTRIB_LABEL:I = 0x40

.field public static final VCARD_ATTRIB_LOGO:I = 0x4000

.field public static final VCARD_ATTRIB_MAILER:I = 0x200

.field public static final VCARD_ATTRIB_N:I = 0x4

.field public static final VCARD_ATTRIB_NICKNAME:I = 0x800000

.field public static final VCARD_ATTRIB_NOTE:I = 0x20000

.field public static final VCARD_ATTRIB_ORG:I = 0x10000

.field public static final VCARD_ATTRIB_PHOTO:I = 0x8

.field public static final VCARD_ATTRIB_PROID:I = 0x2000000

.field public static final VCARD_ATTRIB_REV:I = 0x40000

.field public static final VCARD_ATTRIB_ROLE:I = 0x2000

.field public static final VCARD_ATTRIB_SORTSTRING:I = 0x8000000

.field public static final VCARD_ATTRIB_SOUND:I = 0x80000

.field public static final VCARD_ATTRIB_TEL:I = 0x80

.field public static final VCARD_ATTRIB_TITLE:I = 0x1000

.field public static final VCARD_ATTRIB_TZ:I = 0x400

.field public static final VCARD_ATTRIB_UID:I = 0x200000

.field public static final VCARD_ATTRIB_URL:I = 0x100000

.field public static final VCARD_ATTRIB_VERSION:I = 0x1

.field public static final VCARD_ATTRIB_XIRMCCALLDATETIME:I = 0x10000000

.field private static final VCARD_ATTR_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_ATTR_ENCODING_BASE64_V30:Ljava/lang/String; = "ENCODING=b"

.field private static final VCARD_ATTR_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_ATTR_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_ATTR_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_COL_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PROPERTY_ADR:Ljava/lang/String; = "ADR"

.field private static final VCARD_PROPERTY_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final VCARD_PROPERTY_BIRTHDAY:Ljava/lang/String; = "BDAY"

.field private static final VCARD_PROPERTY_CALLTYPE_INCOMING:Ljava/lang/String; = "RECEIVED"

.field private static final VCARD_PROPERTY_CALLTYPE_MISSED:Ljava/lang/String; = "MISSED"

.field private static final VCARD_PROPERTY_CALLTYPE_OUTGOING:Ljava/lang/String; = "DIALED"

.field private static final VCARD_PROPERTY_EMAIL:Ljava/lang/String; = "EMAIL"

.field private static final VCARD_PROPERTY_END:Ljava/lang/String; = "END"

.field private static final VCARD_PROPERTY_FULL_NAME:Ljava/lang/String; = "FN"

.field private static final VCARD_PROPERTY_NAME:Ljava/lang/String; = "N"

.field private static final VCARD_PROPERTY_NICKNAME:Ljava/lang/String; = "NICKNAME"

.field private static final VCARD_PROPERTY_NOTE:Ljava/lang/String; = "NOTE"

.field private static final VCARD_PROPERTY_ORG:Ljava/lang/String; = "ORG"

.field private static final VCARD_PROPERTY_PHOTO:Ljava/lang/String; = "PHOTO"

.field private static final VCARD_PROPERTY_SORT_STRING:Ljava/lang/String; = "SORT-STRING"

.field private static final VCARD_PROPERTY_SOUND:Ljava/lang/String; = "SOUND"

.field private static final VCARD_PROPERTY_TEL:Ljava/lang/String; = "TEL"

.field private static final VCARD_PROPERTY_TITLE:Ljava/lang/String; = "TITLE"

.field private static final VCARD_PROPERTY_URL:Ljava/lang/String; = "URL"

.field private static final VCARD_PROPERTY_VERSION:Ljava/lang/String; = "VERSION"

.field private static final VCARD_PROPERTY_X_CLASS:Ljava/lang/String; = "X-CLASS"

.field private static final VCARD_PROPERTY_X_DCM_HMN_MODE:Ljava/lang/String; = "X-DCM-HMN-MODE"

.field private static final VCARD_PROPERTY_X_NICKNAME:Ljava/lang/String; = "X-NICKNAME"

.field private static final VCARD_PROPERTY_X_NO:Ljava/lang/String; = "X-NO"

.field private static final VCARD_PROPERTY_X_PHONETIC_FIRST_NAME:Ljava/lang/String; = "X-PHONETIC-FIRST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_LAST_NAME:Ljava/lang/String; = "X-PHONETIC-LAST-NAME"

.field private static final VCARD_PROPERTY_X_PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "X-PHONETIC-MIDDLE-NAME"

.field private static final VCARD_PROPERTY_X_REDUCTION:Ljava/lang/String; = "X-REDUCTION"

.field private static final VCARD_PROPERTY_X_TIMESTAMP:Ljava/lang/String; = "X-IRMC-CALL-DATETIME"

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final VCARD_WS:Ljava/lang/String; = " "


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private mFilter:J

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private mIsCallLogComposer:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30:Z

.field private mMaxCount:I

.field private mNeedPhotoForVCard:Z

.field private mOffset:I

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private mTerminateIsCalled:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mUsesQPToPrimaryProperties:Z

.field private final mUsesQuotedPrintable:Z

.field private final mUsesShiftJis:Z

.field private final mUsesUtf8:Z

.field private final mVCardAttributeCharset:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 119
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "for_export_only"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->DATA_REQUEST_URI:Landroid/net/Uri;

    .line 358
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    .line 359
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-AIM"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-MSN"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-YAHOO"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-ICQ"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-JABBER"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->IM_MAP:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-SKYPE-USERNAME"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 377
    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "number"

    aput-object v2, v1, v4

    const-string v2, "date"

    aput-object v2, v1, v5

    const-string v2, "type"

    aput-object v2, v1, v6

    const-string v2, "name"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "numbertype"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "numberlabel"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 396
    const/high16 v2, -0x4000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;-><init>(Landroid/content/Context;IZZZ)V

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 404
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;-><init>(Landroid/content/Context;IZZZ)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "isCallLogComposer"
    .parameter "needPhotoInVCard"

    .prologue
    const/4 v1, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 368
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mNeedPhotoForVCard:Z

    .line 2155
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mOffset:I

    .line 2157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mMaxCount:I

    .line 2159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    .line 414
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContext:Landroid/content/Context;

    .line 415
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardType:I

    .line 416
    iput-boolean p3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCareHandlerErrors:Z

    .line 417
    iput-boolean p4, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    .line 418
    iput-boolean p5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mNeedPhotoForVCard:Z

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 421
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->isV30(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    .line 422
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    .line 423
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    .line 424
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsJapaneseMobilePhone:Z

    .line 425
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mOnlyOneNoteFieldIsAvailable:Z

    .line 426
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesAndroidProperty:Z

    .line 427
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesDefactProperty:Z

    .line 428
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesUtf8(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesUtf8:Z

    .line 429
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesShiftJis(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesShiftJis:Z

    .line 430
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->usesQPToPrimaryProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    .line 433
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "SHIFT_JIS"

    const-string v1, "docomo"

    invoke-static {v0, v1}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    .line 440
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    .line 448
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesShiftJis:Z

    if-eqz v0, :cond_1

    .line 442
    const-string v0, "SHIFT_JIS"

    invoke-static {v0}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    .line 443
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0

    .line 445
    :cond_1
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    .line 446
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "vcardTypeStr"
    .parameter "careHandlerErrors"

    .prologue
    .line 400
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;-><init>(Landroid/content/Context;IZZZ)V

    .line 401
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothVCardComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pbap/BluetoothVCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothVCardComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothVCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendBirthday(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 6
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v5, 0x0

    .line 1433
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1434
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1435
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data2"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1436
    .local v2, eventType:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1451
    .end local v2           #eventType:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 1443
    .restart local v2       #eventType:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "data1"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, birthday:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1445
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1447
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1448
    const-string v3, "BDAY"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendEmails(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1306
    .local v2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 1307
    .local v4, emailAddressExists:Z
    if-eqz v2, :cond_3

    .line 1308
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1309
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1310
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v9, "data2"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1311
    .local v8, typeAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1312
    .local v7, type:I
    :goto_1
    const-string v9, "data3"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1313
    .local v6, label:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1314
    .local v3, emailAddress:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1315
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1317
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1320
    const/4 v4, 0x1

    .line 1321
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1322
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, p1, v9, v6, v3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    .line 1328
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #typeAsObject:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_4

    iget-boolean v9, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v9, :cond_4

    .line 1329
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, ""

    const-string v11, ""

    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_4
    return-void
.end method

.method private appendIms(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 7
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v5, "vnd.android.cursor.item/im"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1396
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_1

    .line 1397
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1398
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v5, "data5"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1399
    .local v4, protocol:Ljava/lang/Integer;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, data:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1401
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1402
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1406
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 1407
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardType:I

    invoke-static {v5}, Lcom/android/bluetooth/pbap/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1408
    const-string v5, "X-GOOGLE-TALK"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #protocol:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private appendNickNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 8
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1175
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1176
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_6

    .line 1178
    iget-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v7, :cond_3

    .line 1179
    const-string v5, "NICKNAME"

    .line 1187
    .local v5, propertyNickname:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1188
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v7, "data1"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1189
    .local v4, nickname:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1194
    iget-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v7, :cond_4

    invoke-static {v4}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v6, 0x1

    .line 1196
    .local v6, reallyUseQuotedPrintable:Z
    :goto_2
    if-eqz v6, :cond_5

    .line 1197
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, encodedNickname:Ljava/lang/String;
    :goto_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-direct {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1204
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_1
    if-eqz v6, :cond_2

    .line 1208
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v7, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    :cond_2
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v7, "\r\n"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1180
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_3
    iget-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesAndroidProperty:Z

    if-eqz v7, :cond_6

    .line 1181
    const-string v5, "X-NICKNAME"

    .restart local v5       #propertyNickname:Ljava/lang/String;
    goto :goto_0

    .line 1194
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #nickname:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 1199
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedNickname:Ljava/lang/String;
    goto :goto_3

    .line 1216
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #encodedNickname:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #nickname:Ljava/lang/String;
    .end local v5           #propertyNickname:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_6
    return-void
.end method

.method private appendNotes(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 12
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1522
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_4

    .line 1523
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v0, :cond_7

    .line 1524
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v11, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    .line 1526
    .local v8, first:Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1527
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1528
    .local v10, note:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 1529
    const-string v10, ""

    .line 1531
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1532
    if-eqz v8, :cond_2

    .line 1533
    const/4 v8, 0x0

    .line 1537
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1535
    :cond_2
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1540
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v10           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1544
    .local v3, noteStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v4, 0x1

    .line 1545
    .local v4, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x1

    .line 1547
    .local v5, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1561
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_4
    return-void

    .line 1544
    .restart local v3       #noteStr:Ljava/lang/String;
    .restart local v8       #first:Z
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #noteBuilder:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1545
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1549
    .end local v3           #noteStr:Ljava/lang/String;
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v8           #first:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #noteBuilder:Ljava/lang/StringBuilder;
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1550
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1551
    .restart local v3       #noteStr:Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1552
    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v4, 0x1

    .line 1553
    .restart local v4       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_a

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v5, 0x1

    .line 1555
    .restart local v5       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v2, "NOTE"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1552
    .end local v4           #shouldAppendCharsetInfo:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 1553
    .restart local v4       #shouldAppendCharsetInfo:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private appendOrganizations(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 11
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1455
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1456
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_4

    .line 1457
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1458
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, company:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1460
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1469
    :cond_1
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1470
    const-string v2, "ORG"

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v9

    :goto_1
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v5, v9

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    move v4, v10

    goto :goto_1

    :cond_3
    move v5, v10

    goto :goto_2

    .line 1482
    .end local v3           #company:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private appendPhones(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 23
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1219
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1220
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 1221
    .local v13, phoneLineExists:Z
    if-eqz v7, :cond_5

    .line 1222
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1223
    .local v16, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1224
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 1225
    .local v19, typeAsObject:Ljava/lang/Integer;
    const-string v20, "data3"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1226
    .local v12, label:Ljava/lang/String;
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1227
    .local v14, phoneNumber:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1228
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 1230
    :cond_1
    if-eqz v14, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1233
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1235
    .local v18, type:I
    :goto_1
    const/4 v13, 0x1

    .line 1236
    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1237
    const/4 v13, 0x1

    .line 1238
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1239
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v14}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    .end local v18           #type:I
    :cond_2
    const/16 v18, 0x1

    goto :goto_1

    .line 1252
    .restart local v18       #type:I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1253
    .local v15, phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 1256
    const/4 v13, 0x1

    .line 1257
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1258
    .local v5, actualPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/pbap/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v8

    .line 1260
    .local v8, format:I
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1261
    .local v17, tmpBuilder:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1262
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1263
    .local v9, formattedPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v9}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1271
    .end local v5           #actualPhoneNumber:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v8           #format:I
    .end local v9           #formattedPhoneNumber:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #label:Ljava/lang/String;
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #tmpBuilder:Landroid/text/SpannableStringBuilder;
    .end local v18           #type:I
    .end local v19           #typeAsObject:Ljava/lang/Integer;
    :cond_5
    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1272
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const-string v21, ""

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_6
    return-void
.end method

.method private appendPhotos(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 13
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v12, 0x47

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1485
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1486
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_4

    .line 1487
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1488
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v6, "data15"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1489
    .local v2, data:[B
    if-eqz v2, :cond_0

    .line 1496
    array-length v6, v2

    if-lt v6, v11, :cond_1

    aget-byte v6, v2, v8

    if-ne v6, v12, :cond_1

    aget-byte v6, v2, v9

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    aget-byte v6, v2, v10

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    .line 1497
    const-string v5, "GIF"

    .line 1512
    .local v5, photoType:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lcom/android/bluetooth/pbap/VCardUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, photoString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1514
    invoke-direct {p0, p1, v4, v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    .end local v4           #photoString:Ljava/lang/String;
    .end local v5           #photoType:Ljava/lang/String;
    :cond_1
    array-length v6, v2

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    aget-byte v6, v2, v8

    const/16 v7, -0x77

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v9

    const/16 v7, 0x50

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v10

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_2

    aget-byte v6, v2, v11

    if-ne v6, v12, :cond_2

    .line 1505
    const-string v5, "PNG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 1506
    .end local v5           #photoType:Ljava/lang/String;
    :cond_2
    array-length v6, v2

    if-lt v6, v10, :cond_3

    aget-byte v6, v2, v8

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    aget-byte v6, v2, v9

    const/16 v7, -0x28

    if-ne v6, v7, :cond_3

    .line 1507
    const-string v5, "JPEG"

    .restart local v5       #photoType:Ljava/lang/String;
    goto :goto_1

    .line 1509
    .end local v5           #photoType:Ljava/lang/String;
    :cond_3
    const-string v6, "BluetoothVCardComposer"

    const-string v7, "Unknown photo type. Ignore."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1518
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #data:[B
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private appendPostals(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1334
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1335
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_2

    .line 1336
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 1337
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_0

    .line 1341
    :cond_2
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1342
    const-string v1, "ADR"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v1, "HOME"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendPostalsForDoCoMo(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1355
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1361
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    const-string v0, "BluetoothVCardComposer"

    const-string v1, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private appendPostalsForDoCoMoInternal(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 5
    .parameter "builder"
    .parameter
    .parameter "preferedType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1373
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1374
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1375
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, label:Ljava/lang/String;
    if-ne v3, p3, :cond_0

    .line 1377
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1378
    const/4 v4, 0x1

    .line 1381
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private appendPostalsForGeneric(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1385
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1386
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data2"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1387
    .local v3, type:Ljava/lang/Integer;
    const-string v4, "data3"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1388
    .local v2, label:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1389
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1392
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private appendStructuredNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 3
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 844
    .local v0, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 845
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 857
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 847
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v1, :cond_2

    .line 850
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v1, "FN"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_2
    const-string v1, "N"

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private appendStructuredNamesInternal(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 37
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 876
    .local p2, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v28, 0x0

    .line 877
    .local v28, primaryContentValues:Landroid/content/ContentValues;
    const/16 v34, 0x0

    .line 878
    .local v34, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 879
    .local v9, contentValues:Landroid/content/ContentValues;
    if-eqz v9, :cond_0

    .line 882
    const-string v3, "is_super_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 883
    .local v22, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v22, :cond_17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    .line 885
    move-object/from16 v28, v9

    .line 902
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v28, :cond_2

    .line 903
    if-eqz v34, :cond_19

    .line 906
    move-object/from16 v28, v34

    .line 913
    :cond_2
    :goto_1
    const-string v3, "data3"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 914
    .local v17, familyName:Ljava/lang/String;
    const-string v3, "data5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 915
    .local v23, middleName:Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 916
    .local v19, givenName:Ljava/lang/String;
    const-string v3, "data4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 917
    .local v27, prefix:Ljava/lang/String;
    const-string v3, "data6"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 918
    .local v35, suffix:Ljava/lang/String;
    const-string v3, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 920
    .local v10, displayName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 927
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1a

    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v35 .. v35}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_4
    const/16 v32, 0x1

    .line 934
    .local v32, reallyUseQuotedPrintableToName:Z
    :goto_2
    if-eqz v32, :cond_1b

    .line 935
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 939
    .local v7, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 950
    .local v8, encodedSuffix:Ljava/lang/String;
    :goto_3
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v17, v3, v36

    const/16 v36, 0x1

    aput-object v19, v3, v36

    const/16 v36, 0x2

    aput-object v23, v3, v36

    const/16 v36, 0x3

    aput-object v27, v3, v36

    const/16 v36, 0x4

    aput-object v35, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 952
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_5
    if-eqz v32, :cond_6

    .line 956
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_6
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardType:I

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Lcom/android/bluetooth/pbap/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 974
    .local v18, fullname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_1c

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/16 v31, 0x1

    .line 977
    .local v31, reallyUseQuotedPrintableToFullname:Z
    :goto_4
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 981
    .local v12, encodedFullname:Ljava/lang/String;
    :goto_5
    const-string v3, "FN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 983
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    :cond_7
    if-eqz v31, :cond_8

    .line 987
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :cond_8
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v12           #encodedFullname:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_9
    :goto_6
    const-string v3, "data9"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1023
    .local v24, phoneticFamilyName:Ljava/lang/String;
    const-string v3, "data8"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1024
    .local v26, phoneticMiddleName:Ljava/lang/String;
    const-string v3, "data7"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1025
    .local v25, phoneticGivenName:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1027
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsJapaneseMobilePhone:Z

    if-eqz v3, :cond_b

    .line 1028
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/pbap/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1029
    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/pbap/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1030
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/pbap/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1033
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v3, :cond_25

    .line 1034
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardType:I

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-static {v3, v0, v1, v2}, Lcom/android/bluetooth/pbap/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1036
    .local v33, sortString:Ljava/lang/String;
    const-string v3, "SORT-STRING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1041
    .local v16, encodedSortString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1042
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    :cond_c
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .end local v16           #encodedSortString:Ljava/lang/String;
    .end local v33           #sortString:Ljava/lang/String;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesDefactProperty:Z

    if-eqz v3, :cond_16

    .line 1105
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2b

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const/16 v29, 0x1

    .line 1109
    .local v29, reallyUseQuotedPrintable:Z
    :goto_8
    if-eqz v29, :cond_2c

    .line 1110
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1114
    .local v14, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_9
    const-string v3, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1116
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_e
    if-eqz v29, :cond_f

    .line 1120
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_f
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_10
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1128
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2d

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/16 v29, 0x1

    .line 1131
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_a
    if-eqz v29, :cond_2e

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1136
    .local v15, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_b
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1138
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_11
    if-eqz v29, :cond_12

    .line 1142
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_12
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_13
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_2f

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    const/16 v29, 0x1

    .line 1153
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_c
    if-eqz v29, :cond_30

    .line 1154
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1158
    .local v13, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_d
    const-string v3, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1160
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    :cond_14
    if-eqz v29, :cond_15

    .line 1164
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :cond_15
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_16
    return-void

    .line 887
    .end local v10           #displayName:Ljava/lang/String;
    .end local v17           #familyName:Ljava/lang/String;
    .end local v19           #givenName:Ljava/lang/String;
    .end local v23           #middleName:Ljava/lang/String;
    .end local v24           #phoneticFamilyName:Ljava/lang/String;
    .end local v25           #phoneticGivenName:Ljava/lang/String;
    .end local v26           #phoneticMiddleName:Ljava/lang/String;
    .end local v27           #prefix:Ljava/lang/String;
    .end local v35           #suffix:Ljava/lang/String;
    .restart local v9       #contentValues:Landroid/content/ContentValues;
    .restart local v22       #isSuperPrimary:Ljava/lang/Integer;
    :cond_17
    if-nez v28, :cond_0

    .line 890
    const-string v3, "is_primary"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 891
    .local v21, isPrimary:Ljava/lang/Integer;
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 892
    move-object/from16 v28, v9

    goto/16 :goto_0

    .line 896
    :cond_18
    if-nez v34, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    move-object/from16 v34, v9

    goto/16 :goto_0

    .line 908
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v21           #isPrimary:Ljava/lang/Integer;
    .end local v22           #isSuperPrimary:Ljava/lang/Integer;
    :cond_19
    const-string v3, "BluetoothVCardComposer"

    const-string v36, "All ContentValues given from database is empty."

    move-object/from16 v0, v36

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v28, Landroid/content/ContentValues;

    .end local v28           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .restart local v28       #primaryContentValues:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 927
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v17       #familyName:Ljava/lang/String;
    .restart local v19       #givenName:Ljava/lang/String;
    .restart local v23       #middleName:Ljava/lang/String;
    .restart local v27       #prefix:Ljava/lang/String;
    .restart local v35       #suffix:Ljava/lang/String;
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 941
    .restart local v32       #reallyUseQuotedPrintableToName:Z
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 942
    .restart local v4       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 943
    .restart local v6       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 944
    .restart local v5       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 945
    .restart local v7       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_3

    .line 974
    .restart local v18       #fullname:Ljava/lang/String;
    :cond_1c
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 977
    .restart local v31       #reallyUseQuotedPrintableToFullname:Z
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_5

    .line 993
    .end local v4           #encodedFamily:Ljava/lang/String;
    .end local v5           #encodedMiddle:Ljava/lang/String;
    .end local v6           #encodedGiven:Ljava/lang/String;
    .end local v7           #encodedPrefix:Ljava/lang/String;
    .end local v8           #encodedSuffix:Ljava/lang/String;
    .end local v18           #fullname:Ljava/lang/String;
    .end local v31           #reallyUseQuotedPrintableToFullname:Z
    .end local v32           #reallyUseQuotedPrintableToName:Z
    :cond_1e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 994
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_21

    invoke-static {v10}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    const/16 v30, 0x1

    .line 996
    .local v30, reallyUseQuotedPrintableToDisplayName:Z
    :goto_e
    if-eqz v30, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 999
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_f
    const-string v3, "N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1001
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_1f
    if-eqz v30, :cond_20

    .line 1005
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    :cond_20
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 994
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_21
    const/16 v30, 0x0

    goto :goto_e

    .line 996
    .restart local v30       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    .line 1015
    .end local v30           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v3, :cond_24

    .line 1016
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1017
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v3, :cond_9

    .line 1018
    const-string v3, "N"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v3, "FN"

    const-string v36, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1055
    .restart local v24       #phoneticFamilyName:Ljava/lang/String;
    .restart local v25       #phoneticGivenName:Ljava/lang/String;
    .restart local v26       #phoneticMiddleName:Ljava/lang/String;
    :cond_25
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQPToPrimaryProperties:Z

    if-eqz v3, :cond_28

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    const/16 v29, 0x1

    .line 1067
    .restart local v29       #reallyUseQuotedPrintable:Z
    :goto_10
    if-eqz v29, :cond_29

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1069
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1070
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1077
    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_11
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/16 v36, 0x0

    aput-object v13, v3, v36

    const/16 v36, 0x1

    aput-object v15, v3, v36

    const/16 v36, 0x2

    aput-object v14, v3, v36

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->shouldAppendCharsetAttribute(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1079
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_27
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1059
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_10

    .line 1072
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1073
    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1074
    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_11

    .line 1092
    .end local v13           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v3, :cond_d

    .line 1093
    const-string v3, "SOUND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    const-string v3, "X-IRMC-N"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    const-string v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v3, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1106
    :cond_2b
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 1112
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_9

    .line 1128
    .end local v14           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2d
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 1134
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_b

    .line 1150
    .end local v15           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v29           #reallyUseQuotedPrintable:Z
    :cond_2f
    const/16 v29, 0x0

    goto/16 :goto_c

    .line 1156
    .restart local v29       #reallyUseQuotedPrintable:Z
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_d
.end method

.method private appendTitles(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 11
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2174
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2175
    .local v7, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_3

    .line 2176
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 2177
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "data4"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2178
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2179
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2181
    const-string v2, "TITLE"

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v9

    :goto_1
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v5, v9

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    move v4, v10

    goto :goto_1

    :cond_2
    move v5, v10

    goto :goto_2

    .line 2187
    .end local v3           #title:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1988
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v0, :cond_0

    .line 1989
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    return-void
.end method

.method private appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1974
    .local p2, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 1975
    .local v0, first:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1976
    .local v2, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1977
    const/4 v0, 0x0

    .line 1981
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1979
    :cond_0
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1983
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1926
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1929
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    :goto_0
    return-void

    .line 1931
    :cond_0
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardUtils;->getPhoneAttributeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, phoneAttribute:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1933
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 1935
    :cond_1
    const-string v1, "BluetoothVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private appendVCardEmailLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "data"

    .prologue
    .line 1806
    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    if-nez p2, :cond_0

    .line 1810
    const/4 v0, 0x3

    .line 1815
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1849
    const-string v2, "BluetoothVCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v1, "INTERNET"

    .line 1854
    .local v1, typeAsString:Ljava/lang/String;
    :goto_1
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1856
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    const-string v2, "\r\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1859
    return-void

    .line 1812
    .end local v0           #typeAsPrimitive:I
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 1822
    :pswitch_0
    const-string v2, "_AUTO_CELL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1823
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1824
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1828
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    const-string v1, "INTERNET"

    .line 1830
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1833
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1834
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1837
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1838
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1841
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    const-string v1, "INTERNET"

    .line 1842
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1845
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1846
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_1

    .line 1815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "propertyName"
    .parameter "rawData"

    .prologue
    const/4 v4, 0x0

    .line 1941
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1942
    return-void
.end method

.method private appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "builder"
    .parameter "field"
    .parameter "rawData"
    .parameter "needCharset"
    .parameter "needQuotedPrintable"

    .prologue
    .line 1946
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    if-eqz p4, :cond_0

    .line 1948
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    :cond_0
    if-eqz p5, :cond_1

    .line 1954
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    const-string v1, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-direct {p0, p3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    .local v0, encodedData:Ljava/lang/String;
    :goto_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    return-void

    .line 1961
    .end local v0           #encodedData:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedData:Ljava/lang/String;
    goto :goto_0
.end method

.method private appendVCardPhotoLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "builder"
    .parameter "encodedData"
    .parameter "photoType"

    .prologue
    .line 1641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v5, "PHOTO"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v5, :cond_1

    .line 1645
    const-string v5, "ENCODING=b"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :goto_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    invoke-direct {p0, v3, p3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1651
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    .local v4, tmpStr:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1656
    .restart local v3       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1657
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1658
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1659
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1660
    add-int/lit8 v2, v2, 0x1

    .line 1661
    const/16 v5, 0x48

    if-le v2, v5, :cond_0

    .line 1662
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const/4 v2, 0x0

    .line 1658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1647
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v4           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v5, "ENCODING=BASE64"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1667
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v4       #tmpStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    const-string v5, "\r\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    return-void
.end method

.method private appendVCardPostalLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 18
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "contentValues"

    .prologue
    .line 1674
    const-string v15, "ADR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const/4 v6, 0x0

    .line 1682
    .local v6, dataExists:Z
    invoke-static/range {p4 .. p4}, Lcom/android/bluetooth/pbap/VCardUtils;->getVCardPostalElements(Landroid/content/ContentValues;)[Ljava/lang/String;

    move-result-object v5

    .line 1683
    .local v5, dataArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1684
    .local v2, actuallyUseQuotedPrintable:Z
    const/4 v12, 0x0

    .line 1685
    .local v12, shouldAppendCharset:Z
    move-object v3, v5

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v3, v8

    .line 1686
    .local v4, data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1687
    const/4 v6, 0x1

    .line 1688
    if-nez v12, :cond_0

    invoke-static {v4}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1689
    const/4 v12, 0x1

    .line 1691
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesQuotedPrintable:Z

    if-eqz v15, :cond_3

    invoke-static {v4}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1692
    const/4 v2, 0x1

    .line 1698
    .end local v4           #data:Ljava/lang/String;
    :cond_1
    array-length v10, v5

    .line 1699
    .local v10, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 1700
    aget-object v4, v5, v7

    .line 1701
    .restart local v4       #data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1702
    if-eqz v2, :cond_4

    .line 1703
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    .line 1699
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1685
    .end local v7           #i:I
    .end local v10           #length:I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1705
    .restart local v7       #i:I
    .restart local v10       #length:I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    goto :goto_2

    .line 1711
    .end local v4           #data:Ljava/lang/String;
    :cond_5
    if-nez p2, :cond_d

    .line 1712
    const/4 v13, 0x3

    .line 1717
    .local v13, typeAsPrimitive:I
    :goto_3
    const/4 v14, 0x0

    .line 1718
    .local v14, typeAsString:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 1745
    const-string v15, "BluetoothVCardComposer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown StructuredPostal type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_6
    :goto_4
    :pswitch_0
    const/4 v11, 0x0

    .line 1752
    .local v11, shouldAppendAttrSeparator:Z
    if-eqz v14, :cond_7

    .line 1753
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1754
    const/4 v11, 0x1

    .line 1756
    :cond_7
    if-eqz v6, :cond_b

    .line 1757
    if-eqz v12, :cond_9

    .line 1765
    if-eqz v11, :cond_8

    .line 1766
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mVCardAttributeCharset:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    const/4 v11, 0x1

    .line 1772
    :cond_9
    if-eqz v2, :cond_b

    .line 1773
    if-eqz v11, :cond_a

    .line 1774
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    :cond_a
    const-string v15, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    const/4 v11, 0x1

    .line 1780
    :cond_b
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    if-eqz v6, :cond_c

    .line 1787
    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    const/4 v15, 0x2

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    const/4 v15, 0x3

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    const/4 v15, 0x4

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    const/4 v15, 0x5

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    const-string v15, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const/4 v15, 0x6

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    :cond_c
    const-string v15, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    return-void

    .line 1714
    .end local v11           #shouldAppendAttrSeparator:Z
    .end local v13           #typeAsPrimitive:I
    .end local v14           #typeAsString:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .restart local v13       #typeAsPrimitive:I
    goto/16 :goto_3

    .line 1720
    .restart local v14       #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v14, "HOME"

    .line 1721
    goto/16 :goto_4

    .line 1724
    :pswitch_2
    const-string v14, "WORK"

    .line 1725
    goto/16 :goto_4

    .line 1728
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesAndroidProperty:Z

    if-eqz v15, :cond_6

    if-eqz p3, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static/range {p3 .. p3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1735
    const-string v15, "X-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "builder"
    .parameter "typeAsObject"
    .parameter "label"
    .parameter "encodedData"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1863
    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    if-nez p2, :cond_0

    .line 1868
    const/4 v0, 0x7

    .line 1873
    .local v0, typeAsPrimitive:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1913
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1917
    :goto_1
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    return-void

    .line 1870
    .end local v0           #typeAsPrimitive:I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #typeAsPrimitive:I
    goto :goto_0

    .line 1875
    :pswitch_0
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1878
    :pswitch_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "VOICE"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1881
    :pswitch_2
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "HOME"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1884
    :pswitch_3
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WORK"

    aput-object v2, v1, v3

    const-string v2, "FAX"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttributes(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_1

    .line 1887
    :pswitch_4
    const-string v1, "CELL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1890
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_1

    .line 1896
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1898
    :cond_1
    const-string v1, "PAGER"

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1902
    :pswitch_6
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 1905
    :pswitch_7
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesAndroidProperty:Z

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1909
    :cond_2
    const-string v1, "VOICE"

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private appendWebsites(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 5
    .parameter "builder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p2, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v4, "vnd.android.cursor.item/website"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1419
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_2

    .line 1420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1421
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1422
    .local v3, website:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1423
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1425
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1426
    const-string v4, "URL"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #website:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "contentValues"

    .prologue
    .line 860
    const-string v6, "data3"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, familyName:Ljava/lang/String;
    const-string v6, "data5"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, middleName:Ljava/lang/String;
    const-string v6, "data2"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, givenName:Ljava/lang/String;
    const-string v6, "data4"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, prefix:Ljava/lang/String;
    const-string v6, "data6"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 865
    .local v5, suffix:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private createOneCallLogEntryInternal()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v0, :cond_2

    .line 655
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    :cond_0
    invoke-static {v3}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    .line 666
    .local v4, needCharset:Z
    :goto_1
    const-string v2, "FN"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 667
    const-string v2, "N"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 669
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 670
    .local v7, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 671
    .local v8, type:I
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, label:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 675
    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->tryAppendCallHistoryTimeStampField(Ljava/lang/StringBuilder;)V

    .line 677
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #needCharset:Z
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #type:I
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v3       #name:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 663
    goto :goto_1
.end method

.method private createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "contactId"

    .prologue
    .line 682
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 683
    .local v11, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string v18, "contact_id=?"

    .line 684
    .local v18, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 693
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 694
    .local v12, dataExists:Z
    const/4 v14, 0x0

    .line 698
    .local v14, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->DATA_REQUEST_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 699
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 700
    invoke-static {v8}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 702
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v12

    .line 703
    :cond_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity;

    .line 705
    .local v13, entity:Landroid/content/Entity;
    invoke-virtual {v13}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 706
    .local v17, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 707
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 708
    .local v16, key:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 709
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 710
    .local v10, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v10, :cond_2

    .line 711
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .restart local v10       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v16

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_2
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 720
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #contentValues:Landroid/content/ContentValues;
    .end local v10           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13           #entity:Landroid/content/Entity;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v1

    if-eqz v14, :cond_3

    .line 721
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    :cond_3
    throw v1

    .line 720
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_4
    if-eqz v14, :cond_5

    .line 721
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 725
    :cond_5
    if-nez v12, :cond_6

    .line 726
    const-string v1, ""

    .line 793
    :goto_1
    return-object v1

    .line 729
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v7, builder:Ljava/lang/StringBuilder;
    const-string v1, "BEGIN"

    const-string v2, "VCARD"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v1, :cond_11

    .line 732
    const-string v1, "VERSION"

    const-string v2, "3.0"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendStructuredNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 739
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/32 v3, 0x800000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 740
    const-string v1, "BluetoothVCardComposer"

    const-string v2, "appendNickName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendNickNames(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 743
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPhones(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 745
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    .line 746
    const-string v1, "BluetoothVCardComposer"

    const-string v2, "appendEmails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendEmails(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 750
    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/16 v3, 0x20

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 751
    const-string v1, "BluetoothVCardComposer"

    const-string v2, "appendPostals"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPostals(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 759
    :cond_9
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/32 v3, 0x100000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 760
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendWebsites(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendBirthday(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 767
    :cond_b
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/32 v3, 0x10000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    .line 768
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendOrganizations(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 771
    :cond_c
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/16 v3, 0x1000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 772
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTitles(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 775
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mNeedPhotoForVCard:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/16 v3, 0x8

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    .line 776
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendPhotos(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 779
    :cond_e
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    const-wide/32 v3, 0x20000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    .line 780
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendNotes(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 784
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_10

    .line 785
    const-string v1, "X-CLASS"

    const-string v2, "PUBLIC"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "X-REDUCTION"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "X-NO"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v1, "X-DCM-HMN-MODE"

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_10
    const-string v1, "END"

    const-string v2, "VCARD"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 734
    :cond_11
    const-string v1, "VERSION"

    const-string v2, "2.1"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "str"

    .prologue
    const/16 v10, 0xa

    .line 2017
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2018
    :cond_0
    const-string v9, ""

    .line 2066
    :goto_0
    return-object v9

    .line 2021
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2022
    .local v7, tempBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2023
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 2024
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2025
    .local v0, ch:C
    const/16 v9, 0xd

    if-ne v0, v9, :cond_3

    .line 2026
    add-int/lit8 v9, v2, 0x1

    if-ge v9, v4, :cond_2

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_2

    .line 2027
    add-int/lit8 v2, v2, 0x1

    .line 2029
    :cond_2
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2030
    :cond_3
    if-ne v0, v10, :cond_4

    .line 2031
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2033
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2036
    .end local v0           #ch:C
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2037
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2038
    .local v8, tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2039
    .local v3, index:I
    const/4 v5, 0x0

    .line 2040
    .local v5, lineCount:I
    const/4 v6, 0x0

    .line 2043
    .local v6, strArray:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2048
    :cond_6
    :goto_3
    array-length v9, v6

    if-ge v3, v9, :cond_7

    .line 2049
    const-string v9, "=%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-byte v12, v6, v3

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    add-int/lit8 v3, v3, 0x1

    .line 2051
    add-int/lit8 v5, v5, 0x3

    .line 2053
    const/16 v9, 0x43

    if-lt v5, v9, :cond_6

    .line 2061
    const-string v9, "=\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    const/4 v5, 0x0

    goto :goto_3

    .line 2044
    :catch_0
    move-exception v1

    .line 2045
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v9, "BluetoothVCardComposer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Charset "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCharsetString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot be used. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Try default charset"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_3

    .line 2066
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 1569
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1570
    :cond_0
    const-string v5, ""

    .line 1637
    :goto_0
    return-object v5

    .line 1573
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1574
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1575
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 1576
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1577
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 1632
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1575
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1579
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1580
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1584
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_3

    .line 1585
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1586
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_2

    .line 1601
    .end local v3           #nextChar:C
    :cond_3
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1605
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v5, :cond_4

    .line 1606
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1615
    :cond_4
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsDoCoMo:Z

    if-eqz v5, :cond_5

    .line 1616
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1619
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1624
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v5, :cond_6

    .line 1625
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1627
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1637
    .end local v0           #ch:C
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1577
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private shouldAppendCharsetAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 2002
    invoke-static {p1}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesUtf8:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldAppendCharsetAttribute(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2006
    .local p1, propertyValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2007
    .local v2, shouldAppendBasically:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2008
    .local v1, propertyValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2009
    const/4 v2, 0x1

    .line 2013
    .end local v1           #propertyValue:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsV30:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mUsesUtf8:Z

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private splitIfSeveralPhoneNumbersExist(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1277
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v5, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1280
    .local v2, first:Z
    if-eqz p1, :cond_5

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1282
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1283
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1284
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1285
    .local v1, ch:C
    if-eqz v2, :cond_1

    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    .line 1286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    const/4 v2, 0x0

    .line 1283
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1288
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    const/4 v2, 0x0

    goto :goto_1

    .line 1291
    :cond_2
    const/16 v6, 0x3b

    if-eq v1, v6, :cond_3

    const/16 v6, 0xa

    if-ne v1, v6, :cond_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    goto :goto_1

    .line 1297
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #length:I
    :cond_5
    return-object v5
.end method

.method private toRfc2455Format(J)Ljava/lang/String;
    .locals 4
    .parameter "millSecs"

    .prologue
    .line 603
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 604
    .local v1, startDate:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 605
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, date:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private tryAppendCallHistoryTimeStampField(Ljava/lang/StringBuilder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 622
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 624
    .local v0, callLogType:I
    packed-switch v0, :pswitch_data_0

    .line 638
    const-string v4, "BluetoothVCardComposer"

    const-string v5, "Call log type not correct."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 626
    :pswitch_0
    const-string v1, "RECEIVED"

    .line 642
    .local v1, callLogTypeStr:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 643
    .local v2, dateAsLong:J
    const-string v4, "X-IRMC-CALL-DATETIME"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendTypeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 646
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->toRfc2455Format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 630
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    .end local v2           #dateAsLong:J
    :pswitch_1
    const-string v1, "DIALED"

    .line 631
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 634
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    :pswitch_2
    const-string v1, "MISSED"

    .line 635
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 624
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addHandler(Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v5, 0x0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v0, "BEGIN"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-nez p4, :cond_2

    .line 457
    const-string v0, "VERSION"

    const-string v2, "3.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_0
    const/4 v4, 0x0

    .line 463
    .local v4, needCharset:Z
    invoke-static {p2}, Lcom/android/bluetooth/pbap/VCardUtils;->containsOnlyPrintableAscii(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const/4 v4, 0x1

    .line 468
    :cond_0
    const-string v2, "FN"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 469
    const-string v2, "N"

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 471
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6, p3}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardTelephoneLine(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v6           #label:Ljava/lang/String;
    :cond_1
    const-string v0, "END"

    const-string v2, "VCARD"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    .end local v4           #needCharset:Z
    :cond_2
    const-string v0, "VERSION"

    const-string v2, "2.1"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->appendVCardLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createOneEntry()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 553
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 554
    :cond_0
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    move v6, v7

    .line 596
    :cond_1
    :goto_0
    return v6

    .line 557
    :cond_2
    const/4 v4, 0x0

    .line 560
    .local v4, name:Ljava/lang/String;
    :try_start_0
    iget-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    if-eqz v8, :cond_4

    .line 561
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->createOneCallLogEntryInternal()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 578
    .local v5, vcard:Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 583
    iget-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCareHandlerErrors:Z

    if-eqz v8, :cond_6

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    .local v1, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;>;"
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 586
    .local v2, handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    invoke-interface {v2, v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    move v6, v7

    .line 587
    goto :goto_0

    .line 563
    .end local v1           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;>;"
    .end local v2           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #vcard:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIdColumn:I

    if-ltz v8, :cond_5

    .line 564
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIdColumn:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->createOneEntryInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #vcard:Ljava/lang/String;
    goto :goto_1

    .line 566
    .end local v5           #vcard:Ljava/lang/String;
    :cond_5
    const-string v7, "BluetoothVCardComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect mIdColumn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIdColumn:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 578
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 573
    .local v0, error:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "BluetoothVCardComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfMemoryError occured. Ignore the entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v6

    .line 591
    .restart local v5       #vcard:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 592
    .restart local v2       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    invoke-interface {v2, v5}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_2

    .line 498
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 500
    .local v9, handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 502
    .local v7, finished:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 504
    .end local v7           #finished:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    :cond_1
    const/4 v0, 0x0

    .line 549
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    :goto_1
    return v0

    .line 509
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 510
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 513
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    :cond_3
    const-string v0, "BluetoothVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCallLogComposer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "BluetoothVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    if-eqz v0, :cond_4

    .line 516
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 524
    :goto_3
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 525
    const-string v0, "BluetoothVCardComposer"

    const-string v1, "mCursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 527
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    goto :goto_3

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 531
    :cond_6
    const-string v0, "BluetoothVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 538
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 540
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 534
    :catch_0
    move-exception v6

    .line 535
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "BluetoothVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 538
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_4

    .line 537
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 538
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 543
    :cond_7
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIsCallLogComposer:Z

    if-eqz v0, :cond_8

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIdColumn:I

    .line 549
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 546
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mIdColumn:I

    goto :goto_5
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 829
    const/4 v0, 0x0

    .line 831
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public movePosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 2165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVCardAttribFilter(J)V
    .locals 3
    .parameter "filter"

    .prologue
    .line 2169
    const-string v0, "BluetoothVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] setVCardAttribFilter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iput-wide p1, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mFilter:J

    .line 2171
    return-void
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 797
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;

    .line 798
    .local v1, handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    invoke-interface {v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 801
    .end local v1           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 803
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 810
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->mTerminateIsCalled:Z

    .line 811
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "BluetoothVCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
