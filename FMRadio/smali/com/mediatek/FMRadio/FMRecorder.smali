.class public Lcom/mediatek/FMRadio/FMRecorder;
.super Ljava/lang/Object;
.source "FMRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_PLAYER_INTERNAL:I = 0x4

.field public static final ERROR_RECORDER_INTERNAL:I = 0x3

.field public static final ERROR_SDCARD_INSUFFICIENT_SPACE:I = 0x1

.field public static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field public static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field private static final FM_RECORD_FOLDER:Ljava/lang/String; = "FM Recording"

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field public static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".ogg"

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field private static final RECORDING_FILE_SOURCE:Ljava/lang/String; = "FM Recordings"

.field private static final RECORDING_FILE_TYPE:Ljava/lang/String; = "audio/ogg"

.field public static final STATE_IDLE:I = 0x5

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_PLAYBACK:I = 0x7

.field public static final STATE_RECORDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FmRx/Recorder"


# instance fields
.field private mDeleteUponSDInsertion:Z

.field public mInternalState:I

.field private mIsRecordingFileSaved:Z

.field private mOldFilePath:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSDCardID:I

.field private mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 97
    iput v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 99
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 101
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 103
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 107
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 109
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    .line 111
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 113
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 417
    return-void
.end method

.method private addCurrentRecordingToDb(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 576
    const-string v17, "FmRx/Recorder"

    const-string v18, ">> addCurrentRecordingToDb"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 578
    :cond_0
    const-string v17, "FmRx/Recorder"

    const-string v18, "<< addCurrentRecordingToDb: file does not exists"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 582
    .local v3, curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 583
    .local v8, modDate:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 585
    .local v6, date:Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 586
    .local v7, dateFormatter:Ljava/text/DateFormat;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v15

    .line 587
    .local v15, timeFormatter:Ljava/text/DateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v16

    .line 588
    .local v16, title:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v14, stringBuilder:Ljava/lang/StringBuilder;
    const-string v17, "FM Recording"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, artist:Ljava/lang/String;
    const/16 v13, 0x9

    .line 594
    .local v13, size:I
    new-instance v5, Landroid/content/ContentValues;

    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 595
    .local v5, cv:Landroid/content/ContentValues;
    const-string v17, "is_music"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    const-string v17, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v17, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/16 v10, 0x3e8

    .line 599
    .local v10, oneSecond:I
    const-string v17, "date_added"

    const-wide/16 v18, 0x3e8

    div-long v18, v3, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v17, "date_modified"

    const-wide/16 v18, 0x3e8

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v17, "mime_type"

    const-string v18, "audio/ogg"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v17, "artist"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v17, "album"

    const-string v18, "FM Recordings"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v17, "duration"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/mediatek/FMRadio/FMRecorder;->addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v12

    .line 607
    .local v12, recordingId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v12, :cond_1

    .line 611
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/FMRadio/FMRecorder;->getPlaylistId(Landroid/content/Context;)I

    move-result v11

    .line 612
    .local v11, playlistId:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_3

    .line 614
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/FMRadio/FMRecorder;->createPlaylist(Landroid/content/Context;)I

    move-result v11

    .line 617
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/mediatek/FMRadio/FMRecorder;->addToPlaylist(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method private addToMediaDB(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 10
    .parameter "context"
    .parameter "cv"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 650
    const/4 v7, 0x0

    .line 651
    .local v7, insertResult:Landroid/net/Uri;
    const/4 v8, -0x1

    .line 653
    .local v8, recordingId:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    .local v6, existItems:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 663
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 666
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existing items update recording id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 684
    const/4 v6, 0x0

    .line 687
    :cond_1
    return v8

    .line 675
    :cond_2
    :try_start_1
    const-string v0, "FmRx/Recorder"

    const-string v1, "addToMediaDB: insert data"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 678
    if-eqz v7, :cond_0

    .line 679
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 684
    const/4 v6, 0x0

    throw v0
.end method

.method private addToPlaylist(Landroid/content/Context;II)V
    .locals 12
    .parameter "context"
    .parameter "playlistId"
    .parameter "recordingId"

    .prologue
    .line 691
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const-string v0, "external"

    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 695
    .local v1, membersUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    const-string v3, "audio_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 699
    .local v8, itemInMembers:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 701
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    const-string v0, "FmRx/Recorder"

    const-string v2, "new item already in playlists.members table"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v0, "FmRx/Recorder"

    const-string v2, "<< addCurrentRecordingToMediaDB"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 712
    const/4 v8, 0x0

    goto :goto_0

    .line 711
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 712
    const/4 v8, 0x0

    .line 715
    :cond_3
    const-string v0, "FmRx/Recorder"

    const-string v2, "addCurrentRecordingToMediaDB: query members"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 723
    .local v9, membersCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 725
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 728
    .local v6, base:I
    const/4 v10, 0x2

    .line 729
    .local v10, size:I
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 730
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "play_order"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    const-string v0, "audio_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    const-string v0, "FmRx/Recorder"

    const-string v2, "addCurrentRecordingToMediaDB: insert to members"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 736
    .end local v6           #base:I
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #size:I
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 737
    const/4 v9, 0x0

    .line 738
    goto/16 :goto_0

    .line 711
    .end local v9           #membersCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 712
    const/4 v8, 0x0

    throw v0

    .line 736
    .restart local v9       #membersCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 737
    const/4 v9, 0x0

    throw v0
.end method

.method private createPlaylist(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 641
    const/4 v2, 0x1

    .line 642
    .local v2, size:I
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 643
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "FM Recordings"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v3, "FmRx/Recorder"

    const-string v4, "addToPlaylist: insert playlist"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 646
    .local v1, newPlaylistUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3
.end method

.method private getPlaylistId(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "FM Recordings"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 627
    .local v6, playlistCursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 628
    .local v7, playlistId:I
    if-eqz v6, :cond_1

    .line 630
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 634
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_1
    return v7

    .line 634
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isHaveAvailableStorage(Ljava/lang/String;)Z
    .locals 10
    .parameter "storagePath"

    .prologue
    .line 541
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 542
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 543
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 544
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 545
    .local v5, spaceLeft:J
    const-string v7, "FmRx/Recorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SD card free blocks="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", blocksize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private setError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 554
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    .line 558
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 565
    iput p1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 566
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public discardRecording()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 378
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> discardRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 382
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 383
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 391
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    const-string v0, "FmRx/Recorder"

    const-string v1, "discardRecording: deletion failed! will try deleting it again when card is inserted back"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 399
    :cond_1
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 400
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 401
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 403
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 404
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< discardRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 385
    :cond_3
    const/4 v0, 0x7

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 387
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 388
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".ogg"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 325
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".ogg"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 443
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 446
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 449
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0}, Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;->onPlayRecordFileComplete()V

    .line 453
    :cond_1
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 482
    const-string v0, "FmRx/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder.onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 484
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 485
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 487
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 488
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 490
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 464
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer.onError: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/16 v1, 0x64

    if-ne v1, p2, :cond_1

    move v0, p2

    .line 466
    .local v0, error:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 467
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 469
    const/4 v1, 0x7

    iget v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v1, v2, :cond_0

    .line 470
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 472
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 465
    .end local v0           #error:I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onSDInserted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 496
    const-string v3, "FmRx/Recorder"

    const-string v4, ">> onSDInserted"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 498
    .local v1, newCardID:I
    const-string v3, "FmRx/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new card id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    if-eq v3, v1, :cond_1

    .line 501
    const-string v3, "FmRx/Recorder"

    const-string v4, "onSDInserted: card has been changed!!"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 514
    :cond_0
    :goto_0
    const-string v3, "FmRx/Recorder"

    const-string v4, "<< onSDInserted"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 503
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    if-eqz v3, :cond_0

    .line 506
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 508
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, oldFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 510
    .local v0, isDeleted:Z
    const-string v3, "FmRx/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSDInserted: delete old recording file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 512
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public recordTime()J
    .locals 4

    .prologue
    .line 301
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 304
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$OnRecorderStateChangedListener;

    .line 412
    return-void
.end method

.method public resetRecorder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 523
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 527
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 529
    :cond_1
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 530
    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 531
    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 532
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 533
    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "newName"

    .prologue
    .line 338
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 341
    const-string v2, "FmRx/Recorder"

    const-string v3, "<< saveRecording: recording file is null!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 347
    .local v0, parentFile:Ljava/io/File;
    if-nez v0, :cond_1

    .line 348
    const-string v2, "FmRx/Recorder"

    const-string v3, "<< saveRecording: parent recording file is null!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 354
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v1, sdFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A file with the same new name will be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 358
    const-string v2, "FmRx/Recorder"

    const-string v3, "can\'t delete the file already exits"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    if-eqz v0, :cond_4

    .line 362
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ogg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 363
    const-string v2, "FmRx/Recorder"

    const-string v3, "can\'t rename file"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ogg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 368
    .end local v1           #sdFile:Ljava/io/File;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 370
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRecorder;->addCurrentRecordingToDb(Landroid/content/Context;)V

    .line 371
    const-string v2, "FmRx/Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 240
    const-string v1, "FmRx/Recorder"

    const-string v2, ">> startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 242
    const-string v1, "FmRx/Recorder"

    const-string v2, "no file to playback!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 249
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer.setDataSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 253
    const-string v1, "FmRx/Recorder"

    const-string v2, "MediaPlayer.prepare()"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 272
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 273
    const-string v1, "FmRx/Recorder"

    const-string v2, "<< startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 267
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmRx/Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public startRecording()V
    .locals 23

    .prologue
    .line 120
    const-string v20, "FmRx/Recorder"

    const-string v21, ">> startRecording"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 126
    const-string v20, "FmRx/Recorder"

    const-string v21, "SD card is not ready!!"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 213
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, sdPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->isHaveAvailableStorage(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 135
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 136
    const-string v20, "FmRx/Recorder"

    const-string v21, "SD card does not have sufficient space!!"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    const-string v20, "FmRx/Recorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "current card id="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 143
    .local v15, sdDir:Ljava/io/File;
    const-string v20, "FmRx/Recorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "external storage dir = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v13, Ljava/io/File;

    const-string v20, "FM Recording"

    move-object/from16 v0, v20

    invoke-direct {v13, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v13, recordingDir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_2

    .line 147
    const-string v20, "FmRx/Recorder"

    const-string v21, "A FILE with name \"FM Recording\" already exists!!"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 150
    :cond_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_3

    .line 151
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    move-result v11

    .line 152
    .local v11, mkdirResult:Z
    if-nez v11, :cond_3

    .line 153
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 158
    .end local v11           #mkdirResult:Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 159
    .local v5, curTime:J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 160
    .local v7, date:Ljava/util/Date;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyyMMdd_HHmmss"

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 161
    .local v17, simpleDateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, time:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v18, stringBuilder:Ljava/lang/StringBuilder;
    const-string v20, "FM"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".ogg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, name:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v13, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 167
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 168
    const-string v20, "FmRx/Recorder"

    const-string v21, "createNewFile success"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_4
    :try_start_1
    const-string v20, "FmRx/Recorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "new record file is:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v20, Landroid/media/MediaRecorder;

    invoke-direct/range {v20 .. v20}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 181
    const-string v20, "FmRx/Recorder"

    const-string v21, "startRecording: create new media record instance"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x63

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 186
    const/16 v14, 0x7d00

    .line 187
    .local v14, samplingRate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x7d00

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 188
    const/16 v3, 0x3200

    .line 189
    .local v3, bitRate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x3200

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 190
    const/4 v4, 0x2

    .line 191
    .local v4, channels:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->prepare()V

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaRecorder;->start()V

    .line 196
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 197
    const-string v20, "FmRx/Recorder"

    const-string v21, "startRecording: start"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 211
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 212
    const-string v20, "FmRx/Recorder"

    const-string v21, "<< startRecording"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 170
    .end local v3           #bitRate:I
    .end local v4           #channels:I
    .end local v14           #samplingRate:I
    :catch_0
    move-exception v10

    .line 171
    .local v10, ioex:Ljava/io/IOException;
    const-string v20, "FmRx/Recorder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException while createTempFile: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 198
    .end local v10           #ioex:Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 199
    .local v8, e:Ljava/lang/IllegalStateException;
    const-string v20, "FmRx/Recorder"

    const-string v21, "IllegalStateException while starting recording!"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 202
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v8

    .line 203
    .local v8, e:Ljava/io/IOException;
    const-string v20, "FmRx/Recorder"

    const-string v21, "IOException while starting recording!"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 206
    .end local v8           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 207
    .local v9, exception:Ljava/lang/RuntimeException;
    const-string v20, "FmRx/Recorder"

    const-string v21, "RuntimeException while start recording"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 279
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    const-string v0, "FmRx/Recorder"

    const-string v1, "stopPlayback called in wrong state!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 290
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 292
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 293
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 219
    const-string v0, "FmRx/Recorder"

    const-string v1, ">> stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x6

    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    if-eq v0, v1, :cond_0

    .line 221
    const-string v0, "FmRx/Recorder"

    const-string v1, "stopRecording() called in wrong state!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 226
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 227
    const-string v0, "FmRx/Recorder"

    const-string v1, "stopRecording: stop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 229
    const-string v0, "FmRx/Recorder"

    const-string v1, "stopRecording: release"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 231
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 232
    const-string v0, "FmRx/Recorder"

    const-string v1, "<< stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
