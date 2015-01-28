.class Landroid/app/ActivityThread$MessageLogger;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageLogger"
.end annotation


# static fields
.field static final FLUSHOUT_SIZE:I = 0x800

.field static final LONGER_TIME:I = 0xc8

.field static final LONGER_TIME_MESSAGE_SIZE:I = 0x50

.field static final MESSAGE_SIZE:I = 0x28

.field private static mElapsedLongTimeRecord:Ljava/util/LinkedList;

.field private static mLastRecord:Ljava/lang/String;

.field private static mLastRecordDateTime:J

.field private static mLastRecordKernelTime:J

.field private static mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageHistoryRecord:Ljava/util/LinkedList;

.field private static mMessageTimeRecord:Ljava/util/LinkedList;

.field private static mMsgCnt:J

.field private static mNonSleepLastRecordKernelTime:J

.field private static mNonSleepLongTimeRecord:Ljava/util/LinkedList;

.field private static mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

.field private static mState:I


# instance fields
.field public nonSleepWallStart:J

.field public nonSleepWallTime:J

.field public wallStart:J

.field public wallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 5160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    .line 5161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 5162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 5163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    .line 5164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    .line 5171
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread$MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 5175
    const/4 v0, 0x0

    sput v0, Landroid/app/ActivityThread$MessageLogger;->mState:I

    .line 5176
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/ActivityThread$MessageLogger;->mMsgCnt:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5180
    return-void
.end method

.method public static addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 1
    .parameter "mList"
    .parameter "startTime"
    .parameter "durationTime"

    .prologue
    .line 5187
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5188
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5189
    return-void
.end method

.method public static dump()V
    .locals 24

    .prologue
    .line 5308
    sget-object v18, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v18

    .line 5309
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5321
    .local v5, history:Ljava/lang/StringBuilder;
    const-string v17, "MSG HISTORY IN MAIN THREAD:\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5322
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current kernel time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5323
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5325
    .local v12, simpleDateFormat:Ljava/text/SimpleDateFormat;
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    if-nez v17, :cond_1

    const/4 v13, 0x0

    .line 5326
    .local v13, sizeForMsgRecord:I
    :goto_0
    sget v17, Landroid/app/ActivityThread$MessageLogger;->mState:I

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 5327
    new-instance v3, Ljava/util/Date;

    sget-wide v19, Landroid/app/ActivityThread$MessageLogger;->mLastRecordDateTime:J

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5328
    .local v3, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sget-wide v21, Landroid/app/ActivityThread$MessageLogger;->mLastRecordKernelTime:J

    sub-long v14, v19, v21

    .line 5329
    .local v14, spent:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sget-wide v21, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLastRecordKernelTime:J

    sub-long v9, v19, v21

    .line 5331
    .local v9, nonSleepSpent:J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v19, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5332
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5333
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5334
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last record dispatching time : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5335
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5336
    add-int/lit8 v13, v13, -0x1

    .line 5339
    .end local v3           #date:Ljava/util/Date;
    .end local v9           #nonSleepSpent:J
    .end local v14           #spent:J
    :cond_0
    const/4 v8, 0x0

    .line 5340
    .local v8, msg:Ljava/lang/String;
    const/16 v16, 0x0

    .line 5341
    .local v16, time:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 5342
    .local v11, nonSleepTime:Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5343
    .local v7, longerHistory:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 5344
    .local v4, flushed:Z
    :goto_1
    if-lez v13, :cond_3

    .line 5345
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ActivityThread$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 5346
    .restart local v8       #msg:Ljava/lang/String;
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ActivityThread$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .line 5347
    .restart local v16       #time:Ljava/lang/Long;
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ActivityThread$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 5348
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5349
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5350
    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5351
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5357
    .end local v3           #date:Ljava/util/Date;
    :goto_2
    invoke-static {v5, v4}, Landroid/app/ActivityThread$MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    .line 5344
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 5325
    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v13           #sizeForMsgRecord:I
    .end local v16           #time:Ljava/lang/Long;
    :cond_1
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    goto/16 :goto_0

    .line 5353
    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v13       #sizeForMsgRecord:I
    .restart local v16       #time:Ljava/lang/Long;
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5354
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5381
    .end local v4           #flushed:Z
    .end local v7           #longerHistory:Ljava/lang/StringBuilder;
    .end local v8           #msg:Ljava/lang/String;
    .end local v11           #nonSleepTime:Ljava/lang/Long;
    .end local v12           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v13           #sizeForMsgRecord:I
    .end local v16           #time:Ljava/lang/Long;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 5361
    .restart local v4       #flushed:Z
    .restart local v7       #longerHistory:Ljava/lang/StringBuilder;
    .restart local v8       #msg:Ljava/lang/String;
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    .restart local v12       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .restart local v13       #sizeForMsgRecord:I
    .restart local v16       #time:Ljava/lang/Long;
    :cond_3
    if-nez v4, :cond_4

    .line 5362
    :try_start_1
    const-string v17, "ActivityThread"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5365
    :cond_4
    const/4 v4, 0x0

    .line 5366
    const-string v17, "=== LONGER MSG HISTORY IN MAIN THREAD ===\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5367
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 5368
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .line 5369
    .local v6, indexForTimeRecord:I
    :goto_3
    if-lez v13, :cond_5

    .line 5370
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v13}, Landroid/app/ActivityThread$MessageLogger;->sizeToIndex(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #msg:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 5371
    .restart local v8       #msg:Ljava/lang/String;
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #nonSleepTime:Ljava/lang/Long;
    check-cast v11, Ljava/lang/Long;

    .line 5372
    .restart local v11       #nonSleepTime:Ljava/lang/Long;
    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    add-int/lit8 v19, v6, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #time:Ljava/lang/Long;
    check-cast v16, Ljava/lang/Long;

    .line 5373
    .restart local v16       #time:Ljava/lang/Long;
    new-instance v3, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 5374
    .restart local v3       #date:Ljava/util/Date;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " from "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " elapsedTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v17, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ms/upTime:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "ms"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5375
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5377
    invoke-static {v7, v4}, Landroid/app/ActivityThread$MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    .line 5369
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_3

    .line 5379
    .end local v3           #date:Ljava/util/Date;
    :cond_5
    if-nez v4, :cond_6

    .line 5380
    const-string v17, "ActivityThread"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    :cond_6
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5384
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/MessageQueue;->dumpMessageQueue()V

    .line 5385
    return-void
.end method

.method private static flushedOrNot(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .parameter "sb"
    .parameter "bl"

    .prologue
    .line 5272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 5274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***Flushing, Current Size Is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "***TAIL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5275
    const/4 p1, 0x1

    .line 5276
    const-string v0, "ActivityThread"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5295
    :cond_0
    :goto_0
    return-void

    .line 5282
    :cond_1
    if-eqz p1, :cond_0

    .line 5283
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static sizeToIndex(I)I
    .locals 0
    .parameter "size"

    .prologue
    .line 5269
    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 9
    .parameter "s"

    .prologue
    .line 5193
    sget-object v3, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v3

    .line 5195
    :try_start_0
    sget v2, Landroid/app/ActivityThread$MessageLogger;->mState:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/app/ActivityThread$MessageLogger;->mState:I

    .line 5196
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 5197
    .local v1, size:I
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 5198
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5199
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5200
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5202
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msg#:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Landroid/app/ActivityThread$MessageLogger;->mMsgCnt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5203
    sget-wide v4, Landroid/app/ActivityThread$MessageLogger;->mMsgCnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Landroid/app/ActivityThread$MessageLogger;->mMsgCnt:J

    .line 5205
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ActivityThread$MessageLogger;->mLastRecordKernelTime:J

    .line 5207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLastRecordKernelTime:J

    .line 5208
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    sput-wide v4, Landroid/app/ActivityThread$MessageLogger;->mLastRecordDateTime:J

    .line 5209
    sget v2, Landroid/app/ActivityThread$MessageLogger;->mState:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 5210
    const/4 v2, 0x0

    sput v2, Landroid/app/ActivityThread$MessageLogger;->mState:I

    .line 5211
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->wallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->wallTime:J

    .line 5212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallStart:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallTime:J

    .line 5213
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ActivityThread$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 5214
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallStart:J

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ActivityThread$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 5216
    iget-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallTime:J

    const-wide/16 v6, 0xc8

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 5218
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v4, 0x50

    if-lt v2, v4, :cond_1

    .line 5220
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 5223
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5224
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 5221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5228
    .end local v0           #i:I
    :cond_1
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5229
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ActivityThread$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 5230
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    iget-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->wallStart:J

    iget-wide v6, p0, Landroid/app/ActivityThread$MessageLogger;->wallTime:J

    invoke-static {v2, v4, v5, v6, v7}, Landroid/app/ActivityThread$MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 5232
    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget-object v4, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_2

    sget-object v2, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget-object v4, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 5234
    :cond_2
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordRateNotMatch: Count:MsgRecordSize:upTimeSize:elapsedTimeSize =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/app/ActivityThread$MessageLogger;->mMsgCnt:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ActivityThread$MessageLogger;->mLongTimeMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ActivityThread$MessageLogger;->mNonSleepLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/app/ActivityThread$MessageLogger;->mElapsedLongTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    :cond_3
    :goto_1
    sget-boolean v2, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    if-eqz v2, :cond_4

    .line 5259
    const-string v2, ">"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5260
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_4
    :goto_2
    monitor-exit v3

    .line 5266
    return-void

    .line 5239
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->wallStart:J

    .line 5240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/app/ActivityThread$MessageLogger;->nonSleepWallStart:J

    goto :goto_1

    .line 5265
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5262
    .restart local v1       #size:I
    :cond_6
    :try_start_1
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Debugging_MessageLogger: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/app/ActivityThread$MessageLogger;->wallTime:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
