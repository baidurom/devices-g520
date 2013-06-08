.class public Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;
.super Ljava/lang/Object;
.source "ConcatenatedSmsFwkExt.java"

# interfaces
.implements Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;


# static fields
.field private static final CONCATE_PROJECTION:[Ljava/lang/String; = null

.field protected static final DELAYED_TIME:I = 0x1b7740

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConcatenatedSmsFwkExt"

.field private static final mRawUri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimId:I

.field private mTimerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/TimerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "reference_number"

    aput-object v1, v0, v2

    const-string v1, "count"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v2

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    .line 103
    iput p2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    goto :goto_0
.end method

.method private addTimerRecord(Lcom/android/internal/telephony/TimerRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 220
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call addTimerRecord"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TimerRecord;

    .line 222
    .local v1, record:Lcom/android/internal/telephony/TimerRecord;
    if-ne v1, p1, :cond_0

    .line 223
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "duplicated TimerRecord object be found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1           #record:Lcom/android/internal/telephony/TimerRecord;
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call checkParamsForMessageOperation"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! handler is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return v0

    .line 272
    :cond_0
    if-nez p2, :cond_1

    .line 273
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! record is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_1
    instance-of v1, p2, Lcom/android/internal/telephony/TimerRecord;

    if-nez v1, :cond_2

    .line 277
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! param r is not TimerRecord object"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTimerRecord(Lcom/android/internal/telephony/TimerRecord;)Z
    .locals 5
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 285
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "call checkTimerRecord"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TimerRecord;

    .line 291
    .local v1, record:Lcom/android/internal/telephony/TimerRecord;
    if-ne p1, v1, :cond_2

    .line 292
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deleteTimerRecord(Lcom/android/internal/telephony/TimerRecord;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 232
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string v4, "call deleteTimerRecord"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 250
    :cond_0
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string/jumbo v4, "no record can be removed "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, countBeforeRemove:I
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    iget-object v3, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, countAfterRemove:I
    sub-int v2, v1, v0

    .line 259
    .local v2, countRemoved:I
    if-lez v2, :cond_2

    .line 260
    const-string v3, "ConcatenatedSmsFwkExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove record(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_2
    const-string v3, "ConcatenatedSmsFwkExt"

    const-string/jumbo v4, "no record be removed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "r"

    .prologue
    .line 180
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call cancelTimer"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 182
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 183
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! invalid params"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local p2
    :goto_0
    return-void

    .line 187
    .restart local p2
    :cond_0
    const/16 v1, 0xbb9

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 188
    check-cast p2, Lcom/android/internal/telephony/TimerRecord;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->deleteTimerRecord(Lcom/android/internal/telephony/TimerRecord;)V

    goto :goto_0
.end method

.method public deleteExistedSegments(Lcom/android/internal/telephony/TimerRecord;)V
    .locals 7
    .parameter "record"

    .prologue
    .line 364
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "call queryExistedSegments"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    const-string v2, "address=? AND reference_number=? AND sim_id=?"

    .line 368
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/internal/telephony/TimerRecord;->address:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 373
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, numOfDeleted:I
    const-string v4, "ConcatenatedSmsFwkExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " segments, ref =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v1           #numOfDeleted:I
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->deleteTimerRecord(Lcom/android/internal/telephony/TimerRecord;)V

    .line 380
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "ConcatenatedSmsFwkExt"

    const-string v5, "FAIL! SQLException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFirstConcatenatedSegment(Ljava/lang/String;I)Z
    .locals 10
    .parameter "address"
    .parameter "refNumber"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 107
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call isFirstConcatenatedSegment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 111
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 116
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 121
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "This segment is not first one"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 135
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 125
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "This segment is the first one"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 135
    goto :goto_0

    .line 127
    :cond_1
    :try_start_1
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 130
    .local v7, e:Landroid/database/SQLException;
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 131
    goto :goto_0
.end method

.method public isLastConcatenatedSegment(Ljava/lang/String;II)Z
    .locals 11
    .parameter "address"
    .parameter "refNumber"
    .parameter "msgCount"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 139
    const-string v0, "ConcatenatedSmsFwkExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call isLastConcatenatedSegment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    const-string v3, "address=? AND reference_number=? AND sim_id=?"

    .line 143
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 148
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->CONCATE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 153
    .local v8, messageCount:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 154
    add-int/lit8 v0, p3, -0x1

    if-ne v8, v0, :cond_0

    move v0, v9

    :goto_0
    move v10, v0

    .line 163
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #messageCount:I
    :goto_1
    return v10

    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageCount:I
    :cond_0
    move v0, v10

    .line 154
    goto :goto_0

    .line 156
    .end local v8           #messageCount:I
    :cond_1
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 159
    .local v7, e:Landroid/database/SQLException;
    const-string v0, "ConcatenatedSmsFwkExt"

    const-string v1, "FAIL! SQLException"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public queryExistedSegments(Lcom/android/internal/telephony/TimerRecord;)[[B
    .locals 20
    .parameter "record"

    .prologue
    .line 300
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "call queryExistedSegments"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v18, 0x0

    check-cast v18, [[B

    .line 304
    .local v18, pdus:[[B
    :try_start_0
    const-string v4, "address=? AND reference_number=? AND sim_id=?"

    .line 305
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/TimerRecord;->address:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mSimId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 310
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mRawUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 313
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 314
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/TimerRecord;->msgCount:I

    new-array v0, v1, [[B

    move-object/from16 v19, v0

    .line 316
    .local v19, tempPdus:[[B
    const-string/jumbo v1, "sequence"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 318
    .local v9, columnSeqence:I
    const-string/jumbo v1, "pdu"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 320
    .local v7, columnPdu:I
    const-string v1, "destination_port"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 323
    .local v8, columnPort:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 324
    .local v11, cursorCount:I
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miss "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/TimerRecord;->msgCount:I

    sub-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " segment(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 326
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 327
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 328
    .local v12, cursorSequence:I
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queried segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    add-int/lit8 v1, v12, -0x1

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v19, v1

    .line 331
    add-int/lit8 v1, v12, -0x1

    aget-object v1, v19, v1

    if-nez v1, :cond_0

    .line 332
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miss segment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    invoke-interface {v10, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    const-string v1, "ConcatenatedSmsFwkExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "segment contain port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v1, 0x0

    check-cast v1, [[B

    .line 360
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v7           #columnPdu:I
    .end local v8           #columnPort:I
    .end local v9           #columnSeqence:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v12           #cursorSequence:I
    .end local v14           #i:I
    .end local v19           #tempPdus:[[B
    :goto_1
    return-object v1

    .line 325
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v7       #columnPdu:I
    .restart local v8       #columnPort:I
    .restart local v9       #columnSeqence:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #cursorCount:I
    .restart local v12       #cursorSequence:I
    .restart local v14       #i:I
    .restart local v19       #tempPdus:[[B
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 341
    .end local v12           #cursorSequence:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 344
    new-array v0, v11, [[B

    move-object/from16 v18, v0

    .line 345
    const/4 v15, 0x0

    .line 346
    .local v15, index:I
    const/4 v14, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len:I
    move/from16 v16, v15

    .end local v15           #index:I
    .local v16, index:I
    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 347
    aget-object v1, v19, v14

    if-eqz v1, :cond_5

    .line 349
    add-int/lit8 v15, v16, 0x1

    .end local v16           #index:I
    .restart local v15       #index:I
    aget-object v1, v19, v14

    aput-object v1, v18, v16

    .line 346
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v15

    .end local v15           #index:I
    .restart local v16       #index:I
    goto :goto_2

    .line 353
    .end local v7           #columnPdu:I
    .end local v8           #columnPort:I
    .end local v9           #columnSeqence:I
    .end local v11           #cursorCount:I
    .end local v14           #i:I
    .end local v16           #index:I
    .end local v17           #len:I
    .end local v19           #tempPdus:[[B
    :cond_3
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! cursor is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object/from16 v1, v18

    .line 360
    goto :goto_1

    .line 355
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 356
    .local v13, e:Landroid/database/SQLException;
    const-string v1, "ConcatenatedSmsFwkExt"

    const-string v2, "FAIL! SQLException"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x0

    check-cast v1, [[B

    goto :goto_1

    .end local v13           #e:Landroid/database/SQLException;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v5       #whereArgs:[Ljava/lang/String;
    .restart local v7       #columnPdu:I
    .restart local v8       #columnPort:I
    .restart local v9       #columnSeqence:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #cursorCount:I
    .restart local v14       #i:I
    .restart local v16       #index:I
    .restart local v17       #len:I
    .restart local v19       #tempPdus:[[B
    :cond_5
    move/from16 v15, v16

    .end local v16           #index:I
    .restart local v15       #index:I
    goto :goto_3
.end method

.method public queryTimerRecord(Ljava/lang/String;I)Lcom/android/internal/telephony/TimerRecord;
    .locals 5
    .parameter "address"
    .parameter "refNumber"

    .prologue
    .line 205
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call queryTimerRecord"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v2, "ConcatenatedSmsFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find record by ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->mTimerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/TimerRecord;

    .line 209
    .local v1, record:Lcom/android/internal/telephony/TimerRecord;
    iget-object v2, v1, Lcom/android/internal/telephony/TimerRecord;->address:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/TimerRecord;->refNumber:I

    if-ne v2, p2, :cond_0

    .line 210
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "find record"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1           #record:Lcom/android/internal/telephony/TimerRecord;
    :goto_0
    return-object v1

    .line 215
    :cond_1
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "don\'t find record"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 5
    .parameter "h"
    .parameter "r"

    .prologue
    const/16 v4, 0xbb9

    .line 192
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call refreshTimer"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 194
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 195
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! invalid params"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 201
    .local v1, m:Landroid/os/Message;
    const-wide/32 v2, 0x1b7740

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"

    .prologue
    .line 167
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "call startTimer"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->checkParamsForMessageOperation(Landroid/os/Handler;Ljava/lang/Object;)Z

    move-result v0

    .line 169
    .local v0, isParamsValid:Z
    if-nez v0, :cond_0

    .line 170
    const-string v2, "ConcatenatedSmsFwkExt"

    const-string v3, "FAIL! invalid params"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    :cond_0
    move-object v2, p2

    .line 174
    check-cast v2, Lcom/android/internal/telephony/TimerRecord;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ConcatenatedSmsFwkExt;->addTimerRecord(Lcom/android/internal/telephony/TimerRecord;)V

    .line 175
    const/16 v2, 0xbb9

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 176
    .local v1, m:Landroid/os/Message;
    const-wide/32 v2, 0x1b7740

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
