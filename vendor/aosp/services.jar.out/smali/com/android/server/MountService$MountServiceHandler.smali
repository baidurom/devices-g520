.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 480
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .parameter "msg"

    .prologue
    .line 485
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    const-string v19, "MountService"

    const-string v20, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 489
    .local v18, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    const-string v20, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v19 .. v21}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)I

    move-result v19

    if-lez v19, :cond_1

    .line 494
    const-wide/16 v19, 0x1f4

    invoke-static/range {v19 .. v20}, Landroid/os/SystemClock;->sleep(J)V

    .line 499
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " registered = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 503
    const-string v19, "MountService"

    const-string v20, "Updating external media status on PackageManager"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 505
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 496
    :cond_1
    const-wide/16 v19, 0x5dc

    invoke-static/range {v19 .. v20}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 507
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService;->finishMediaUpdate()V

    goto/16 :goto_0

    .line 516
    .end local v18           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    const-string v19, "MountService"

    const-string v20, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v19, "MountService"

    const-string v20, "Updated status. Processing requests"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 520
    .local v14, size:I
    new-array v15, v14, [I

    .line 521
    .local v15, sizeArr:[I
    const/16 v16, 0x0

    .line 523
    .local v16, sizeArrN:I
    const-string v19, "activity"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    .line 525
    .local v3, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v5, 0x0

    .local v5, i:I
    move/from16 v17, v16

    .end local v16           #sizeArrN:I
    .local v17, sizeArrN:I
    :goto_2
    if-ge v5, v14, :cond_11

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 527
    .restart local v18       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 528
    .local v11, path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 529
    .local v9, needKill:Z
    const/4 v4, 0x0

    .line 530
    .local v4, done:Z
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 531
    const/4 v4, 0x1

    .line 573
    :cond_3
    :goto_3
    if-nez v4, :cond_f

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    .line 575
    const-string v19, "MountService"

    const-string v20, "Retrying to kill storage users again"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const-wide/16 v21, 0x1e

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v16, v17

    .line 525
    .end local v17           #sizeArrN:I
    .restart local v16       #sizeArrN:I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v16

    .end local v16           #sizeArrN:I
    .restart local v17       #sizeArrN:I
    goto :goto_2

    .line 533
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 534
    .local v12, pids:[I
    if-eqz v12, :cond_5

    array-length v0, v12

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 535
    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    .line 536
    :cond_6
    if-eqz v3, :cond_e

    .line 537
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    .line 538
    .local v13, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v13, :cond_c

    .line 539
    array-length v8, v12

    .line 540
    .local v8, len:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_5
    if-ge v7, v8, :cond_7

    .line 541
    if-eqz v9, :cond_9

    .line 557
    .end local v7           #k:I
    .end local v8           #len:I
    :cond_7
    :goto_6
    if-eqz v9, :cond_d

    .line 559
    const-string v19, "unmount media"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v12, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 562
    if-eqz v12, :cond_8

    array-length v0, v12

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 563
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 544
    .restart local v7       #k:I
    .restart local v8       #len:I
    :cond_9
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 545
    .local v10, p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v19, v0

    aget v20, v12, v7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 546
    const/4 v9, 0x1

    .line 547
    const-string v19, "MountService"

    const-string v20, "java process, need kill!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v10           #p:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 554
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #k:I
    .end local v8           #len:I
    :cond_c
    const-string v19, "MountService"

    const-string v20, "runningList from AMS is null!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 566
    :cond_d
    const-string v19, "MountService"

    const-string v20, "all native process, don\'t need kill!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 570
    .end local v13           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_e
    const-string v19, "MountService"

    const-string v20, "Fail to get AMS while unmount!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 581
    .end local v12           #pids:[I
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    .line 582
    const-string v19, "MountService"

    const-string v20, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_10
    add-int/lit8 v16, v17, 0x1

    .end local v17           #sizeArrN:I
    .restart local v16       #sizeArrN:I
    aput v5, v15, v17

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    .line 591
    .end local v4           #done:Z
    .end local v9           #needKill:Z
    .end local v11           #path:Ljava/lang/String;
    .end local v16           #sizeArrN:I
    .end local v18           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v17       #sizeArrN:I
    :cond_11
    add-int/lit8 v5, v17, -0x1

    :goto_7
    if-ltz v5, :cond_0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget v20, v15, v5

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 597
    .end local v3           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v5           #i:I
    .end local v14           #size:I
    .end local v15           #sizeArr:[I
    .end local v17           #sizeArrN:I
    :pswitch_2
    const-string v19, "MountService"

    const-string v20, "H_UNMOUNT_MS"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 599
    .restart local v18       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method