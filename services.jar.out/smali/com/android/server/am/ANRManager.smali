.class public final Lcom/android/server/am/ANRManager;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$AnrDumpMgr;,
        Lcom/android/server/am/ANRManager$DumpThread;,
        Lcom/android/server/am/ANRManager$AnrDumpRecord;,
        Lcom/android/server/am/ANRManager$BinderWatchdog;,
        Lcom/android/server/am/ANRManager$AnrMonitorHandler;
    }
.end annotation


# static fields
.field static ENABLE_PREDUMP:Z = false

.field static final MAX_MTK_TRACE_COUNT:I = 0xa

.field static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field static final SIGNAL_STKFLT:I = 0x10

.field static final START_ANR_DUMP_MSG:I = 0x3eb

.field static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field static final TAG:Ljava/lang/String; = "ANRManager"

.field static mAMService:Lcom/android/server/am/ActivityManagerService;

.field static final mANRProcessStats:Lcom/android/internal/os/ProcessStats;

.field static final mDumpStackTraces:Ljava/lang/Object;

.field static final mPreDumpStackTraces:Ljava/lang/Object;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

.field mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->mDumpStackTraces:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->mPreDumpStackTraces:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object p1, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    return-void
.end method

.method public static preDumpStackTraces(ZLjava/util/ArrayList;Landroid/util/SparseArray;)Ljava/io/File;
    .locals 17
    .parameter "clearTraces"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const-string v13, "dalvik.vm.mtk-stack-trace-file"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, tracesPath:Ljava/lang/String;
    const-string v13, "ANRManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 197
    :cond_0
    const/4 v11, 0x0

    .line 263
    :cond_1
    :goto_0
    return-object v11

    .line 200
    :cond_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v11, tracesFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 203
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    .line 204
    .local v10, tracesDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 205
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1fd

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 212
    if-eqz p0, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 213
    sget-object v14, Lcom/android/server/am/ANRManager;->mPreDumpStackTraces:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 218
    .local v2, b:I
    const/4 v13, -0x1

    if-eq v2, v13, :cond_7

    .line 219
    const-string v13, "\\.(?=[^\\.]+$)"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, fileSeps:[Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x9

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, f1:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 227
    :cond_4
    const/16 v9, 0x8

    .local v9, i:I
    :goto_1
    if-lez v9, :cond_6

    .line 228
    new-instance v4, Ljava/io/File;

    .end local v4           #f1:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .restart local v4       #f1:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 232
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "_"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v9, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v5, f2:Ljava/io/File;
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 227
    .end local v5           #f2:Ljava/io/File;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 239
    :cond_6
    new-instance v4, Ljava/io/File;

    .end local v4           #f1:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "_1."

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x1

    aget-object v15, v6, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v4       #f1:Ljava/io/File;
    invoke-virtual {v11, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 242
    .end local v4           #f1:Ljava/io/File;
    .end local v6           #fileSeps:[Ljava/lang/String;
    .end local v9           #i:I
    :cond_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 243
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v8

    .line 246
    .end local v2           #b:I
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :cond_8
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 247
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1b6

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-static/range {v13 .. v16}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 254
    if-eqz v7, :cond_9

    .line 255
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 261
    :cond_9
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v12, v0, v1}, Lcom/android/server/am/ANRManager;->preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 262
    const-string v13, "ANRManager"

    const-string v14, "preDumpStackTraces End"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    :catchall_0
    move-exception v13

    :goto_3
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 248
    .end local v10           #tracesDir:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 249
    .local v3, e:Ljava/io/IOException;
    :try_start_7
    const-string v13, "ANRManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to prepare MTK ANR pre-dump traces file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 251
    const/4 v11, 0x0

    .line 254
    .end local v11           #tracesFile:Ljava/io/File;
    if-eqz v7, :cond_1

    .line 255
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 257
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 253
    .end local v3           #e:Ljava/io/IOException;
    .restart local v11       #tracesFile:Ljava/io/File;
    :catchall_1
    move-exception v13

    .line 254
    if-eqz v7, :cond_a

    .line 255
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 258
    :cond_a
    :goto_4
    throw v13

    .line 257
    .restart local v10       #tracesDir:Ljava/io/File;
    :catch_2
    move-exception v13

    goto :goto_2

    .end local v10           #tracesDir:Ljava/io/File;
    :catch_3
    move-exception v14

    goto :goto_4

    .line 243
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #tracesDir:Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private static preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 8
    .parameter "tracesPath"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/android/server/am/ANRManager$2;

    const/16 v5, 0x8

    invoke-direct {v3, p0, v5}, Lcom/android/server/am/ANRManager$2;-><init>(Ljava/lang/String;I)V

    .line 275
    .local v3, observer:Landroid/os/FileObserver;
    :try_start_0
    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    if-eqz p1, :cond_1

    .line 280
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 281
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 282
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 285
    .local v4, pid:I
    const-string v5, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preDumpStackTraces process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " zygote: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v7, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v7}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v5, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    const/16 v5, 0x10

    invoke-static {v4, v5}, Landroid/os/Process;->sendSignal(II)V

    .line 293
    :goto_1
    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 294
    monitor-exit v3

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {v4, p0}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v4           #pid:I
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 296
    .end local v1           #i:I
    .end local v2           #num:I
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "ANRManager"

    invoke-static {v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 303
    return-void

    .line 301
    :catchall_1
    move-exception v5

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    throw v5
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "clearTraces"
    .parameter "nativetracesPath"
    .parameter "subnativetracesPath"

    .prologue
    .line 542
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v5, tracesFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 545
    .local v4, tracesDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 546
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1fd

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 548
    if-eqz p0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 549
    sget-object v7, Lcom/android/server/am/ANRManager;->mDumpStackTraces:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    const/16 v3, 0x8

    .local v3, i:I
    :goto_0
    if-lez v3, :cond_2

    .line 553
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".txt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 555
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".txt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, f2:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 552
    .end local v2           #f2:Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 559
    .end local v1           #f1:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "1.txt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .restart local v1       #f1:Ljava/io/File;
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 561
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    .end local v1           #f1:Ljava/io/File;
    .end local v3           #i:I
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 565
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b6

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 570
    .end local v4           #tracesDir:Ljava/io/File;
    .end local v5           #tracesFile:Ljava/io/File;
    :goto_1
    return-object v5

    .line 561
    .restart local v3       #i:I
    .restart local v4       #tracesDir:Ljava/io/File;
    .restart local v5       #tracesFile:Ljava/io/File;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 566
    .end local v3           #i:I
    .end local v4           #tracesDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Ljava/io/IOException;
    const-string v6, "ANRManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to prepare ANR traces file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAndroidTime()Ljava/lang/String;
    .locals 9

    .prologue
    .line 863
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 864
    .local v2, simpleDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 865
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 866
    .local v1, formatter:Ljava/util/Formatter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.3f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-float v7, v7

    const/high16 v8, 0x447a

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 848
    sget-object v2, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    monitor-enter v2

    .line 852
    :try_start_0
    const-string v1, "ANRManager"

    const-string v3, "getProcessState"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-object v1, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/os/ProcessStats;->printCurrentState(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 857
    :goto_0
    return-object v1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessState error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 859
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final preDumpStackTraces(I)V
    .locals 11
    .parameter "pid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 144
    sget-boolean v8, Lcom/android/server/am/ANRManager;->ENABLE_PREDUMP:Z

    if-nez v8, :cond_0

    .line 187
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v2, firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v10}, Landroid/util/SparseArray;-><init>(I)V

    .line 150
    .local v4, lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ANRManager;->updateProcessStats()V

    .line 151
    if-eq p1, v9, :cond_1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    sget-object v8, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v8, :cond_2

    sget-object v8, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    if-eq p1, v9, :cond_4

    .line 159
    invoke-static {p1, p1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 162
    .local v1, bpid:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 164
    .local v5, pidValue:I
    if-eq v5, p1, :cond_3

    sget-object v8, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v8, :cond_3

    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    .end local v0           #binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #bpid:Ljava/lang/Integer;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pidValue:I
    :cond_4
    sget-object v8, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v8, :cond_5

    .line 175
    sget-object v8, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 176
    .local v6, pm:Landroid/os/PowerManager;
    const-string v8, "ANRManager"

    invoke-virtual {v6, v10, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    sput-object v8, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_5
    sget-object v8, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    mul-int/lit16 v9, v9, 0xc8

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 181
    new-instance v7, Lcom/android/server/am/ANRManager$1;

    const-string v8, "preDumpStackTraces"

    invoke-direct {v7, p0, v8, v2, v4}, Lcom/android/server/am/ANRManager$1;-><init>(Lcom/android/server/am/ANRManager;Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 186
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"

    .prologue
    .line 470
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareStackTraceFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, traceFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 479
    .local v1, traceDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 480
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 483
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 485
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 486
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 488
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    .end local v1           #traceDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to prepare stack trace file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startANRManager()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;-><init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    .line 76
    new-instance v1, Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-direct {v1, p0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;-><init>(Lcom/android/server/am/ANRManager;)V

    iput-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    .line 77
    sget-object v1, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/server/am/ANRManager;->ENABLE_PREDUMP:Z

    .line 79
    sget-object v1, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessStats;->init()V

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateProcessStats()V
    .locals 5

    .prologue
    .line 833
    sget-object v2, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    monitor-enter v2

    .line 837
    :try_start_0
    sget-object v1, Lcom/android/server/am/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 838
    const-string v1, "ANRManager"

    const-string v3, "updateProcessStats"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 844
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStats error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
