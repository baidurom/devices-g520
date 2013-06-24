.class public Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;
.super Ljava/lang/Object;
.source "BluetoothPbapVCardListing.java"


# static fields
.field public static final DEBUG:Z = true

.field private static final PB_NAME_PROJECTION:[Ljava/lang/String; = null

.field static final PB_NUMBER_PROJECTION:[Ljava/lang/String; = null

.field private static final PB_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVCardListing"

.field private static final VCARD_LISTING_BEGIN:Ljava/lang/String; = "<?xml version=\"1.0\"?><!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\"><vCard-listing version=\"1.0\">"

.field private static final VCARD_LISTING_END:Ljava/lang/String; = "</vCard-listing>"

.field public static final VCARD_ORDER_ALPHA:I = 0x0

.field public static final VCARD_ORDER_DEFAULT:I = 0x0

.field public static final VCARD_ORDER_INDEX:I = 0x1

.field public static final VCARD_ORDER_PHONETICAL:I = 0x2

.field public static final VCARD_SEARCH_DEFAULT:I = 0x0

.field public static final VCARD_SEARCH_NAME:I = 0x0

.field public static final VCARD_SEARCH_NUMBER:I = 0x1

.field public static final VCARD_SEARCH_SOUND:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDirty:Z

.field private mIDList:[Ljava/lang/Long;

.field private mLocalName:Ljava/lang/String;

.field private mLocalNum:Ljava/lang/String;

.field private mResultPath:Ljava/lang/String;

.field private mSearchAttrib:I

.field private mSearchValue:Ljava/lang/String;

.field private mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

.field private mSimDirty:Z

.field private mSimIDList:[Ljava/lang/Long;

.field private mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_PROJECTION:[Ljava/lang/String;

    .line 92
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "localName"
    .parameter "localNum"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalName:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalNum:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mCursor:Landroid/database/Cursor;

    .line 108
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    .line 110
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    .line 112
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mResultPath:Ljava/lang/String;

    .line 114
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mDirty:Z

    .line 117
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    .line 120
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimDirty:Z

    .line 123
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    .line 129
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPbapVCardListing : localName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 137
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalName:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalNum:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    .line 141
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 725
    const-string v0, "BluetoothPbapVCardListing"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void
.end method

.method private genIDList(II)Ljava/lang/String;
    .locals 5
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, idList:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v2, v2

    add-int v3, p1, p2

    if-lt v2, v3, :cond_1

    .line 330
    new-instance v1, Ljava/lang/String;

    .end local v1           #idList:Ljava/lang/String;
    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v1       #idList:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    add-int v4, v0, p1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .end local v0           #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] genIDList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 341
    return-object v1
.end method

.method private genSimIDList(II)Ljava/lang/String;
    .locals 5
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, idList:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v2, v2

    add-int v3, p1, p2

    if-lt v2, v3, :cond_1

    .line 347
    new-instance v1, Ljava/lang/String;

    .end local v1           #idList:Ljava/lang/String;
    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v1       #idList:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    add-int v4, v0, p1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .end local v0           #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] genSimIDList("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 358
    return-object v1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalName:Ljava/lang/String;

    .line 323
    :goto_0
    return-object v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalNum:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnerName : name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mLocalNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSameAttribute(ILjava/lang/String;)Z
    .locals 2
    .parameter "searchAttr"
    .parameter "searchVal"

    .prologue
    .line 700
    const/4 v0, 0x1

    .line 702
    .local v0, b:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 703
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 704
    :cond_1
    const/4 v0, 0x0

    .line 707
    :cond_2
    return v0
.end method

.method private listCallLog(IIIILjava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .parameter "type"
    .parameter "listOffset"
    .parameter "maxListCount"
    .parameter "searchAttrib"
    .parameter "searchVal"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 595
    .local p6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v10, 0xa0

    .line 596
    .local v10, ret:I
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 597
    .local v2, myUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 598
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 599
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "name"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "number"

    aput-object v5, v3, v1

    .line 604
    .local v3, projection:[Ljava/lang/String;
    const-string v1, "[API] listCallLog"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 605
    packed-switch p1, :pswitch_data_0

    .line 618
    const/16 v1, 0xc0

    .line 672
    :cond_0
    :goto_0
    return v1

    .line 607
    :pswitch_0
    const-string v4, "type=1"

    .line 621
    :goto_1
    :pswitch_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    if-eqz v4, :cond_4

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 627
    :goto_2
    const/4 v1, 0x1

    if-eq p4, v1, :cond_5

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "name LIKE \'%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 633
    :cond_1
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 635
    const/4 v9, 0x0

    .line 636
    .local v9, num:Ljava/lang/String;
    const/4 v7, 0x0

    .line 637
    .local v7, callSize:I
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 639
    if-eqz v8, :cond_a

    .line 640
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSize=="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    if-gt v7, p2, :cond_6

    .line 643
    const/16 v10, 0xc4

    .line 668
    :cond_2
    if-eqz v8, :cond_3

    .line 669
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v10

    .line 672
    goto/16 :goto_0

    .line 610
    .end local v7           #callSize:I
    .end local v9           #num:Ljava/lang/String;
    :pswitch_2
    const-string v4, "type=2"

    .line 611
    goto/16 :goto_1

    .line 613
    :pswitch_3
    const-string v4, "type=3"

    .line 614
    goto/16 :goto_1

    .line 625
    :cond_4
    new-instance v4, Ljava/lang/String;

    .end local v4           #selection:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_2

    .line 630
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "number LIKE \'%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 649
    .restart local v7       #callSize:I
    .restart local v9       #num:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v8, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 650
    :goto_4
    if-lez p3, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 652
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 653
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 655
    :cond_7
    if-eqz v9, :cond_8

    .line 656
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 661
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 658
    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 668
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 669
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 665
    :cond_a
    const/16 v1, 0xd0

    .line 668
    if-eqz v8, :cond_0

    .line 669
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private listPb(ZIILjava/util/ArrayList;)I
    .locals 18
    .parameter "relist"
    .parameter "listOffset"
    .parameter "maxListCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 363
    .local p4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 364
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 365
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 366
    .local v13, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 367
    .local v17, ownerInc:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[API] listPb("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSearchAttrib="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 371
    if-nez v3, :cond_1

    .line 372
    :try_start_0
    const-string v7, "[ERR] resolver is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/16 v7, 0xd0

    .line 470
    if-eqz v13, :cond_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v7

    .line 375
    :cond_1
    if-eqz v17, :cond_3

    .line 377
    if-nez p2, :cond_2

    .line 379
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add owner name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 p3, p3, -0x1

    .line 383
    :cond_2
    if-lez p2, :cond_3

    .line 384
    add-int/lit8 p2, p2, -0x1

    .line 387
    :cond_3
    if-eqz p1, :cond_b

    .line 388
    const-string v6, "indicate_phone_or_sim_contact=-1"

    .line 389
    .local v6, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 390
    .local v5, projection:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 391
    .local v16, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 393
    .local v15, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    .line 394
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 395
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 396
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 398
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_PROJECTION:[Ljava/lang/String;

    .line 408
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 409
    const/4 v7, 0x0

    const-string v8, "upper(display_name)"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 411
    if-eqz v13, :cond_a

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get cursor successfully. count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 414
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    new-instance v16, Ljava/util/HashSet;

    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 416
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieve data : listOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxListCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 419
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_8

    .line 420
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 422
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    if-lez p3, :cond_4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, p2

    if-le v7, v0, :cond_4

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add one record : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 426
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 p3, p3, -0x1

    .line 430
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 470
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v7

    if-eqz v13, :cond_5

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7

    .line 400
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    :try_start_2
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 401
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND data1 LIKE \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 405
    :cond_7
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 406
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_1

    .line 432
    :cond_8
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Long;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Long;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    const/16 v16, 0x0

    .line 434
    const/4 v15, 0x0

    .line 467
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_9
    :goto_3
    const/16 v7, 0xa0

    .line 470
    if-eqz v13, :cond_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 436
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_a
    :try_start_3
    const-string v7, "Query id list failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    goto :goto_3

    .line 439
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v7, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, p2

    if-gt v7, v0, :cond_c

    .line 440
    const/16 v7, 0xc4

    .line 470
    if-eqz v13, :cond_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 442
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v7, v7

    sub-int v7, v7, p2

    move/from16 v0, p3

    if-ge v7, v0, :cond_d

    .line 443
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v7, v7

    sub-int p3, v7, p2

    .line 445
    :cond_d
    if-eqz p3, :cond_9

    .line 446
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->genIDList(II)Ljava/lang/String;

    move-result-object v14

    .line 447
    .local v14, idList:Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 448
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 449
    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NAME_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "display_name"

    move-object v7, v3

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 451
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    move/from16 v0, p3

    if-eq v7, v0, :cond_f

    .line 452
    :cond_e
    const/16 v7, 0xd0

    .line 470
    if-eqz v13, :cond_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 455
    :cond_f
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 456
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_9

    .line 457
    const-string v7, "Get record!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 458
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 463
    :cond_10
    const/16 v7, 0xc0

    .line 470
    if-eqz v13, :cond_0

    .line 471
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private listSimPb(ZIILjava/util/ArrayList;)I
    .locals 18
    .parameter "relist"
    .parameter "listOffset"
    .parameter "maxListCount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 479
    .local p4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 480
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 481
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 482
    .local v13, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 483
    .local v17, ownerInc:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[API] listSimPb("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSearchAttrib="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 487
    if-nez v3, :cond_1

    .line 488
    :try_start_0
    const-string v7, "[ERR] resolver is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    const/16 v7, 0xd0

    .line 586
    if-eqz v13, :cond_0

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v7

    .line 491
    :cond_1
    if-eqz v17, :cond_3

    .line 493
    if-nez p2, :cond_2

    .line 495
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add owner name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getOwnerName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 p3, p3, -0x1

    .line 499
    :cond_2
    if-lez p2, :cond_3

    .line 500
    add-int/lit8 p2, p2, -0x1

    .line 503
    :cond_3
    if-eqz p1, :cond_b

    .line 504
    const-string v6, "indicate_phone_or_sim_contact>-1"

    .line 505
    .local v6, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 506
    .local v5, projection:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 507
    .local v16, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 509
    .local v15, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    .line 510
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 511
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    .line 512
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 514
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_PROJECTION:[Ljava/lang/String;

    .line 524
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 525
    const/4 v7, 0x0

    const-string v8, "upper(display_name)"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 527
    if-eqz v13, :cond_a

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get cursor successfully. count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 530
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 531
    new-instance v16, Ljava/util/HashSet;

    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 532
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrieve data : listOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxListCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 535
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_8

    .line 536
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 538
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    if-lez p3, :cond_4

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, p2

    if-le v7, v0, :cond_4

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add one record : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 542
    const/4 v7, 0x1

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 p3, p3, -0x1

    .line 546
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 586
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v7

    if-eqz v13, :cond_5

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v7

    .line 516
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_6
    :try_start_2
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 517
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NUMBER_PROJECTION:[Ljava/lang/String;

    .line 518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND data1 LIKE \'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 521
    :cond_7
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 522
    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_PROJECTION:[Ljava/lang/String;

    goto/16 :goto_1

    .line 548
    :cond_8
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Long;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Long;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    const/16 v16, 0x0

    .line 550
    const/4 v15, 0x0

    .line 583
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_9
    :goto_3
    const/16 v7, 0xa0

    .line 586
    if-eqz v13, :cond_0

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 552
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v15       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_a
    :try_start_3
    const-string v7, "Query id list failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    goto :goto_3

    .line 555
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v7, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v0, p2

    if-gt v7, v0, :cond_c

    .line 556
    const/16 v7, 0xc4

    .line 586
    if-eqz v13, :cond_0

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 558
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v7, v7

    sub-int v7, v7, p2

    move/from16 v0, p3

    if-ge v7, v0, :cond_d

    .line 559
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v7, v7

    sub-int p3, v7, p2

    .line 561
    :cond_d
    if-eqz p3, :cond_9

    .line 562
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->genSimIDList(II)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, idList:Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 564
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 565
    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->PB_NAME_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "display_name"

    move-object v7, v3

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 567
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    move/from16 v0, p3

    if-eq v7, v0, :cond_f

    .line 568
    :cond_e
    const/16 v7, 0xd0

    .line 586
    if-eqz v13, :cond_0

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 571
    :cond_f
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 572
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_9

    .line 573
    const-string v7, "Get record!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 574
    const/4 v7, 0x0

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 579
    :cond_10
    const/16 v7, 0xc0

    .line 586
    if-eqz v13, :cond_0

    .line 587
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private openWriter()Z
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x1

    .line 293
    .local v0, ret:Z
    const-string v1, "[API] openWriter"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->terminate()V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->init(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    .line 304
    const/4 v0, 0x0

    .line 310
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 311
    const-string v1, "Failed to open PbapWriter"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    .line 313
    :cond_1
    return v0

    .line 298
    :cond_2
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    invoke-direct {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    goto :goto_0

    .line 307
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 720
    const-string v0, "BluetoothPbapVCardListing"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mResultPath:Ljava/lang/String;

    return-object v0
.end method

.method public list(IIILjava/lang/String;II)I
    .locals 13
    .parameter "type"
    .parameter "order"
    .parameter "searchAttr"
    .parameter "searchVal"
    .parameter "listOffset"
    .parameter "maxListCount"

    .prologue
    .line 149
    const/4 v10, 0x1

    .line 150
    .local v10, ownerNotInc:I
    const/16 v12, 0xcc

    .line 151
    .local v12, ret:I
    const/4 v8, 0x0

    .line 153
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->openWriter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const/16 v2, 0xd0

    .line 244
    :goto_0
    return v2

    .line 161
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v8, :cond_1

    .line 163
    const-string v2, "Alloc result failed"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    .line 164
    const/16 v2, 0xd0

    goto :goto_0

    .line 168
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    .line 219
    const/16 v12, 0xc0

    .line 224
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    if-nez v2, :cond_b

    .line 225
    const/16 v12, 0xd0

    .line 243
    :cond_2
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    move v2, v12

    .line 244
    goto :goto_0

    .line 174
    :pswitch_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    const/4 v10, 0x0

    .line 177
    :cond_3
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mDirty:Z

    if-nez v2, :cond_4

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->isSameAttribute(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 178
    :cond_4
    move/from16 v0, p3

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    .line 179
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    .line 180
    const/4 v2, 0x1

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listPb(ZIILjava/util/ArrayList;)I

    move-result v12

    .line 181
    const/16 v2, 0xa0

    if-ne v12, v2, :cond_5

    .line 182
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mDirty:Z

    goto :goto_1

    .line 184
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mDirty:Z

    goto :goto_1

    .line 187
    :cond_6
    const/4 v2, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listPb(ZIILjava/util/ArrayList;)I

    move-result v12

    .line 189
    goto :goto_1

    :pswitch_1
    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 194
    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listCallLog(IIIILjava/lang/String;Ljava/util/ArrayList;)I

    move-result v12

    .line 195
    goto :goto_1

    .line 201
    :pswitch_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    const/4 v10, 0x0

    .line 204
    :cond_7
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimDirty:Z

    if-nez v2, :cond_8

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->isSameAttribute(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 205
    :cond_8
    move/from16 v0, p3

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchAttrib:I

    .line 206
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSearchValue:Ljava/lang/String;

    .line 207
    const/4 v2, 0x1

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listSimPb(ZIILjava/util/ArrayList;)I

    move-result v12

    .line 208
    const/16 v2, 0xa0

    if-ne v12, v2, :cond_9

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimDirty:Z

    goto/16 :goto_1

    .line 211
    :cond_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimDirty:Z

    goto/16 :goto_1

    .line 214
    :cond_a
    const/4 v2, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listSimPb(ZIILjava/util/ArrayList;)I

    move-result v12

    .line 216
    goto/16 :goto_1

    .line 226
    :cond_b
    const/16 v2, 0xa0

    if-ne v12, v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    const-string v3, "<?xml version=\"1.0\"?><!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\"><vCard-listing version=\"1.0\">"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->write(Ljava/lang/String;)Z

    move-result v11

    .line 229
    .local v11, r:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    if-eqz v11, :cond_c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_c

    .line 230
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<card handle=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v4, p5, v9

    add-int/2addr v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".vcf\" name=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->write(Ljava/lang/String;)Z

    move-result v11

    .line 229
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 233
    :cond_c
    if-eqz v11, :cond_d

    .line 234
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    const-string v3, "</vCard-listing>"

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->write(Ljava/lang/String;)Z

    move-result v11

    .line 236
    :cond_d
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->terminate()V

    .line 237
    if-eqz v11, :cond_e

    .line 238
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mWriter:Lcom/android/bluetooth/pbap/BluetoothPbapWriter;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapWriter;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mResultPath:Ljava/lang/String;

    goto/16 :goto_2

    .line 240
    :cond_e
    const/16 v12, 0xd0

    goto/16 :goto_2

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public queryPbID(I)J
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] queryPbID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 253
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mDirty:Z

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listPb(ZIILjava/util/ArrayList;)I

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 265
    :goto_0
    return-wide v0

    .line 263
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR] can not found id for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mIDList.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    .line 265
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mIDList:[Ljava/lang/Long;

    array-length v0, v0

    goto :goto_1
.end method

.method public querySimPbID(I)J
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] querySimPbID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->printLog(Ljava/lang/String;)V

    .line 270
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimDirty:Z

    if-eqz v1, :cond_0

    .line 275
    const/4 v1, 0x0

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->listSimPb(ZIILjava/util/ArrayList;)I

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v1, v1

    if-le v1, p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 282
    :goto_0
    return-wide v0

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR] can not found id for index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mSimIDList.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->errorLog(Ljava/lang/String;)V

    .line 282
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->mSimIDList:[Ljava/lang/Long;

    array-length v0, v0

    goto :goto_1
.end method
