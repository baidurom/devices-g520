.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;

.field final synthetic val$isIPO:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iput-boolean p2, p0, Lcom/android/server/MountService$1$1;->val$isIPO:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mMountAll:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$1$1;->val$isIPO:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 682
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume list"

    const/16 v23, 0x6e

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    .line 684
    .local v19, vols:[Ljava/lang/String;
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v20, v4, v9

    .line 685
    .local v20, volstr:Ljava/lang/String;
    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 687
    .local v18, tok:[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v12, v18, v21

    .line 688
    .local v12, path:Ljava/lang/String;
    const-string v16, "removed"

    .line 690
    .local v16, state:Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 691
    .local v15, st:I
    if-nez v15, :cond_1

    .line 692
    const-string v16, "removed"

    .line 705
    :goto_1
    if-eqz v16, :cond_0

    .line 706
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Updating valid state "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v12, v1}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 693
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_2

    .line 694
    const-string v16, "unmounted"

    goto :goto_1

    .line 695
    :cond_2
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v15, v0, :cond_4

    .line 696
    const-string v16, "mounted"

    .line 697
    const-string v21, "MountService"

    const-string v22, "Media already mounted on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 710
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 711
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Error get sd state while IPO"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 724
    .local v10, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v5

    .line 725
    .local v5, count:I
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 726
    .local v13, paths:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 727
    .local v17, states:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v5, :cond_6

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v21

    aget-object v23, v13, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    aput-object v21, v17, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 698
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #paths:[Ljava/lang/String;
    .end local v17           #states:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #path:Ljava/lang/String;
    .restart local v15       #st:I
    .restart local v16       #state:Ljava/lang/String;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #vols:[Ljava/lang/String;
    .restart local v20       #volstr:Ljava/lang/String;
    :cond_4
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v15, v0, :cond_5

    .line 699
    :try_start_3
    const-string v16, "shared"

    .line 700
    const-string v21, "MountService"

    const-string v22, "Media shared on daemon connection"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 702
    :cond_5
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "Unexpected state %d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 730
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v12           #path:Ljava/lang/String;
    .end local v15           #st:I
    .end local v16           #state:Ljava/lang/String;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #vols:[Ljava/lang/String;
    .end local v20           #volstr:Ljava/lang/String;
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v17       #states:[Ljava/lang/String;
    :cond_6
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 732
    add-int/lit8 v8, v5, -0x1

    :goto_3
    if-ltz v8, :cond_c

    .line 733
    :try_start_5
    aget-object v12, v13, v8

    .line 734
    .restart local v12       #path:Ljava/lang/String;
    aget-object v16, v17, v8

    .line 736
    .restart local v16       #state:Ljava/lang/String;
    const-string v21, "unmounted"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mBootMountUpdate:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "/storage/sdcard0"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mSD1BootMounted:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2202(Lcom/android/server/MountService;Z)Z

    .line 740
    const-string v21, "MountService"

    const-string v22, "mSD1BootMounted = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v0, v12}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v14

    .line 747
    .local v14, rc:I
    if-eqz v14, :cond_8

    .line 748
    const-string v21, "MountService"

    const-string v22, "Boot-time mount failed (%d)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 732
    .end local v14           #rc:I
    :cond_8
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 730
    .end local v5           #count:I
    .end local v8           #i:I
    .end local v10           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #paths:[Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    .end local v17           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v21

    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v21
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 774
    :catch_1
    move-exception v7

    .line 775
    .local v7, ex:Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Boot-time mount exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->updateSDExist()Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Z

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)V

    .line 779
    const-string v21, "MountService"

    const-string v22, "BOOT mSetDefaultEnable = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$3102(Lcom/android/server/MountService;Z)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mMountAll:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1002(Lcom/android/server/MountService;Z)Z

    .line 783
    return-void

    .line 741
    .restart local v5       #count:I
    .restart local v8       #i:I
    .restart local v10       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #paths:[Ljava/lang/String;
    .restart local v16       #state:Ljava/lang/String;
    .restart local v17       #states:[Ljava/lang/String;
    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mBootMountUpdate:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "/storage/sdcard1"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/MountService;->mSD2BootMounted:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2302(Lcom/android/server/MountService;Z)Z

    .line 743
    const-string v21, "MountService"

    const-string v22, "mSD2BootMounted = true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 751
    :cond_b
    const-string v21, "shared"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x7

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v12, v2, v3}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_5

    .line 762
    .end local v12           #path:Ljava/lang/String;
    .end local v16           #state:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #calls: Lcom/android/server/MountService;->updateEmulatedMounted()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)V

    .line 770
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;Z)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$2702(Lcom/android/server/MountService;Z)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6
.end method
