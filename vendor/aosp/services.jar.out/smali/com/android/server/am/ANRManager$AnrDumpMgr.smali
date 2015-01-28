.class Lcom/android/server/am/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ANRManager;)V
    .locals 1
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z
    .locals 3
    .parameter "dumpRecord"

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 643
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ANRManager$AnrDumpRecord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    monitor-exit v1

    .line 646
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 4
    .parameter "dumpRecord"

    .prologue
    .line 601
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 604
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v3

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 606
    .local v1, value:Lcom/android/server/am/ANRManager$AnrDumpRecord;
    if-eqz v1, :cond_2

    .line 607
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    .line 609
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #value:Lcom/android/server/am/ANRManager$AnrDumpRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 5
    .parameter "dumpRecord"

    .prologue
    .line 651
    if-nez p1, :cond_0

    .line 652
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 655
    :cond_0
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo begin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 659
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    sget-object v2, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_1

    .line 660
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v2, :cond_2

    .line 666
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 669
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ANRManager"

    const-string v3, "dumpAnrDebugInfo exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 24
    .parameter "dumpRecord"

    .prologue
    .line 683
    monitor-enter p1

    .line 684
    :try_start_0
    const-string v21, "ANRManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dumpAnrDebugInfoLocked: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 686
    monitor-exit p1

    .line 826
    :goto_0
    return-void

    .line 688
    :cond_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 689
    .local v5, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 690
    .local v14, parent:Lcom/android/server/am/ActivityRecord;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v9, firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v13, Landroid/util/SparseArray;

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 694
    .local v13, lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 695
    .local v6, binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 696
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 701
    :cond_1
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget v15, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 704
    .local v15, parentPid:I
    if-eqz v14, :cond_2

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    if-lez v21, :cond_2

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 705
    :cond_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v15, v0, :cond_3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_3
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v21

    if-eq v0, v15, :cond_4

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_4
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v10, v21, -0x1

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_7

    .line 710
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 711
    .local v19, r:Lcom/android/server/am/ProcessRecord;
    if-eqz v19, :cond_5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 712
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    .line 713
    .local v16, pid:I
    if-lez v16, :cond_5

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    move/from16 v0, v16

    if-eq v0, v15, :cond_5

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 714
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 715
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v16           #pid:I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 717
    .restart local v16       #pid:I
    :cond_6
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 825
    .end local v5           #app:Lcom/android/server/am/ProcessRecord;
    .end local v6           #binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v13           #lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v14           #parent:Lcom/android/server/am/ActivityRecord;
    .end local v15           #parentPid:I
    .end local v16           #pid:I
    .end local v19           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v21

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 724
    .restart local v5       #app:Lcom/android/server/am/ProcessRecord;
    .restart local v6       #binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10       #i:I
    .restart local v13       #lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v14       #parent:Lcom/android/server/am/ActivityRecord;
    .restart local v15       #parentPid:I
    :cond_7
    if-eqz v6, :cond_9

    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 725
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 726
    .local v7, bpid:Ljava/lang/Integer;
    if-eqz v7, :cond_8

    .line 727
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 728
    .local v17, pidValue:I
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move/from16 v0, v17

    if-eq v0, v15, :cond_8

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 729
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 730
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 745
    .end local v7           #bpid:Ljava/lang/Integer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v17           #pidValue:I
    :cond_9
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v21, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 747
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v21, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    if-eqz v14, :cond_a

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    if-lez v21, :cond_a

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 750
    :cond_a
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v15, v0, :cond_b

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v15}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v21

    if-nez v21, :cond_b

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v21, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_c

    .line 755
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 756
    .restart local v7       #bpid:Ljava/lang/Integer;
    if-eqz v7, :cond_c

    .line 757
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 758
    .restart local v17       #pidValue:I
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    move/from16 v0, v17

    if-eq v0, v15, :cond_c

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 759
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v21, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v21

    if-nez v21, :cond_c

    .line 761
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v21, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v7           #bpid:Ljava/lang/Integer;
    .end local v17           #pidValue:I
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 769
    .local v3, activity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 772
    .local v4, annotation:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 773
    .local v12, info:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 774
    const-string v21, "ANR in "

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    if-eqz v3, :cond_d

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 776
    const-string v21, " ("

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_d
    const-string v21, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    if-eqz v4, :cond_e

    .line 780
    const-string v21, "Reason: "

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_e
    if-eqz v14, :cond_f

    if-eq v14, v3, :cond_f

    .line 783
    const-string v21, "Parent: "

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_f
    new-instance v18, Lcom/android/internal/os/ProcessStats;

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    .line 788
    .local v18, processStats:Lcom/android/internal/os/ProcessStats;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 789
    monitor-exit p1

    goto/16 :goto_0

    .line 792
    :cond_10
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    const/16 v21, 0x1

    sget-object v22, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v9, v1, v13, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 794
    .local v20, tracesFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 795
    monitor-exit p1

    goto/16 :goto_0

    .line 797
    :cond_11
    const/4 v8, 0x0

    .line 798
    .local v8, cpuInfo:Ljava/lang/String;
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    .line 799
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 800
    sget-object v21, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ANRManager;->getProcessState()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 803
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 805
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 806
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/ProcessStats;->printCurrentLoad()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const-string v21, "ANRManager"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 814
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 805
    :catchall_1
    move-exception v21

    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v21

    .line 815
    :cond_12
    if-nez v20, :cond_13

    .line 817
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Landroid/os/Process;->sendSignal(II)V

    .line 820
    :cond_13
    const-string v21, "ro.monkey"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_14

    .line 824
    :cond_14
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 825
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method removeDumpRecord(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter "dumpRecord"

    .prologue
    .line 613
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 616
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v2

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 618
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startAsyncDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 8
    .parameter "dumpRecord"

    .prologue
    .line 622
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAsyncDump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 629
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v3

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    monitor-exit v3

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 634
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v4, 0x3eb

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 637
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 638
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
