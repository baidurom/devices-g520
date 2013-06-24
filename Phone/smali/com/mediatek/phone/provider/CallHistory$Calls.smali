.class public Lcom/mediatek/phone/provider/CallHistory$Calls;
.super Ljava/lang/Object;
.source "CallHistory.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/provider/CallHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    }
.end annotation


# static fields
.field public static final AREA_CODE:Ljava/lang/String; = "area_code"

.field private static final AREA_CODE_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_HISTORY_MAX_COUNT:I = 0x3e8

.field private static final CALL_INFO_PROJECTION:[Ljava/lang/String; = null

.field public static final CONFIRM:Ljava/lang/String; = "confirm"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final CONTENT_URI_CALLS:Landroid/net/Uri; = null

.field public static final COUNTRY_ISO:Ljava/lang/String; = "country_iso"

.field private static final COUNTRY_ISO_PROJECTION:[Ljava/lang/String; = null

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const-string v0, "content://call_history/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "country_iso"

    aput-object v1, v0, v3

    const-string v1, "area_code"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "confirm"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/phone/provider/CallHistory$Calls;->CALL_INFO_PROJECTION:[Ljava/lang/String;

    .line 105
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "country_iso"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/phone/provider/CallHistory$Calls;->COUNTRY_ISO_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "area_code"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/phone/provider/CallHistory$Calls;->AREA_CODE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static addCallNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZ)V
    .locals 13
    .parameter "context"
    .parameter "number"
    .parameter "countryISO"
    .parameter "start"
    .parameter "slotId"
    .parameter "isMultiSim"

    .prologue
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallNumber(), number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", countryISO = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isMultiSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 133
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p0, v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->queryIPPrefix(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, ipPrefix:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v2, ""

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_0
    invoke-static {p1, p2}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v11

    .line 141
    .local v11, numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    if-nez v11, :cond_2

    .line 142
    const-string v5, ""

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->addCallNumberInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-object v3, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    iget-object v5, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object v2, p0

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->addCallNumberInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 147
    iget-object v2, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    move-object v2, p0

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->addCallNumberInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 154
    :cond_3
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, internationlPrefix:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 157
    .local v12, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v12, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 158
    .local v10, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    const-string v5, ""

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->addCallNumberInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static addCallNumberInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "number"
    .parameter "countryISO"
    .parameter "areaCode"
    .parameter "start"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 169
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 170
    .local v4, result:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getCallInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;

    move-result-object v0

    .line 171
    .local v0, callInfo:Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    if-eqz v0, :cond_2

    .line 172
    iget-wide v1, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mConfirm:J

    .line 174
    .local v1, confirm:J
    const-wide/16 v7, 0x1

    cmp-long v7, v7, v1

    if-nez v7, :cond_0

    .line 175
    iget-object v7, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    const-string v7, "addCallNumber(), set confirm from 1 to 0"

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 178
    const-wide/16 v1, 0x0

    .line 182
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 184
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "country_iso"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    const-string v7, "area_code"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    const-string v7, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v7, "confirm"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addCallNumber(), country iso = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", area code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", confirm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 193
    new-instance v5, Lcom/mediatek/phone/provider/SelectionBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "number = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/mediatek/phone/provider/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .local v5, selectionBuilder:Lcom/mediatek/phone/provider/SelectionBuilder;
    sget-object v7, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/mediatek/phone/provider/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    .end local v1           #confirm:J
    .end local v5           #selectionBuilder:Lcom/mediatek/phone/provider/SelectionBuilder;
    :goto_0
    return-void

    .line 196
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 197
    .restart local v6       #values:Landroid/content/ContentValues;
    const-string v7, "number"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v7, "country_iso"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 200
    const-string v7, "area_code"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_3
    const-string v7, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v7, "confirm"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    sget-object v7, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 205
    invoke-static {p0}, Lcom/mediatek/phone/provider/CallHistory$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteNumber(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 283
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, where:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getCallInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;

    move-result-object v0

    .line 285
    .local v0, callInfo:Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    iget-object v4, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v1

    .line 288
    .local v1, numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    if-eqz v1, :cond_0

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    iget-object v4, v1, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR number = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .end local v1           #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    :cond_0
    sget-object v4, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public static getAllCountryISO(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/phone/provider/CallHistory$Calls;->COUNTRY_ISO_PROJECTION:[Ljava/lang/String;

    const-string v5, "date"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 247
    const-string v0, "cursor is null..."

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v6

    goto :goto_0
.end method

.method public static getCallInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    .locals 11
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 210
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v8, Lcom/mediatek/phone/provider/SelectionBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/phone/provider/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v8, selectionBuilder:Lcom/mediatek/phone/provider/SelectionBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select builder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/mediatek/phone/provider/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/phone/provider/CallHistory$Calls;->CALL_INFO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/mediatek/phone/provider/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 215
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 216
    const-string v0, "cursor is null..."

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 233
    :goto_0
    return-object v4

    .line 220
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 222
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 227
    :cond_2
    const-string v0, "country code is empty or count < 0"

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 231
    :cond_3
    new-instance v6, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 232
    .local v6, callInfo:Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v6

    .line 233
    goto :goto_0
.end method

.method public static getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "countryISO"

    .prologue
    const/4 v4, 0x0

    .line 254
    new-instance v8, Lcom/mediatek/phone/provider/SelectionBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "country_iso = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/phone/provider/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v8, selectionBuilder:Lcom/mediatek/phone/provider/SelectionBuilder;
    const-string v0, "area_code IS NOT NULL"

    invoke-virtual {v8, v0}, Lcom/mediatek/phone/provider/SelectionBuilder;->addClause(Ljava/lang/String;)Lcom/mediatek/phone/provider/SelectionBuilder;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/phone/provider/CallHistory$Calls;->AREA_CODE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/mediatek/phone/provider/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 258
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 259
    const-string v0, "cursor is null..."

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-object v4

    .line 262
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 263
    const-string v0, "cursor count is 0"

    #calls: Lcom/mediatek/phone/provider/CallHistory;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/phone/provider/CallHistory;->access$000(Ljava/lang/String;)V

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, areaCode:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v6

    .line 270
    goto :goto_0
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 1000)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static updateConfirmFlag(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 6
    .parameter "context"
    .parameter "number"
    .parameter "confirm"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 276
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "confirm"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    new-instance v1, Lcom/mediatek/phone/provider/SelectionBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/phone/provider/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, selectionBuilder:Lcom/mediatek/phone/provider/SelectionBuilder;
    sget-object v3, Lcom/mediatek/phone/provider/CallHistory$Calls;->CONTENT_URI_CALLS:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/mediatek/phone/provider/SelectionBuilder;->build()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
