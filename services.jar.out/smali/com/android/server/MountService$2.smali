.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1003
    const-string v12, "vold.encrypt_progress"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, encryptProgress:Ljava/lang/String;
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptProgress("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1006
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encryptProgress("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "), skip the command to vold."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 1015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$3802(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1022
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$3902(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1092
    :cond_1
    :goto_0
    return-void

    .line 1031
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "list"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v12

    const/16 v13, 0x6e

    invoke-static {v12, v13}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 1034
    .local v10, vols:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v11, v1, v4

    .line 1035
    .local v11, volstr:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1037
    .local v9, tok:[Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v6, v9, v12

    .line 1038
    .local v6, path:Ljava/lang/String;
    const-string v8, "removed"

    .line 1040
    .local v8, state:Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1041
    .local v7, st:I
    if-nez v7, :cond_4

    .line 1042
    const-string v8, "removed"

    .line 1055
    :goto_2
    if-eqz v8, :cond_3

    .line 1056
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating valid state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v6, v8}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1043
    :cond_4
    const/4 v12, 0x1

    if-ne v7, v12, :cond_5

    .line 1044
    const-string v8, "unmounted"

    goto :goto_2

    .line 1045
    :cond_5
    const/4 v12, 0x4

    if-ne v7, v12, :cond_8

    .line 1046
    const-string v8, "mounted"

    .line 1047
    const-string v12, "MountService"

    const-string v13, "Media already mounted on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1060
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #st:I
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1061
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1062
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 1078
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$3802(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1083
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1089
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1090
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    #setter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$3902(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto/16 :goto_0

    .line 1048
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #st:I
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    :cond_8
    const/4 v12, 0x7

    if-ne v7, v12, :cond_9

    .line 1049
    :try_start_1
    const-string v8, "shared"

    .line 1050
    const-string v12, "MountService"

    const-string v13, "Media shared on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1052
    :cond_9
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Unexpected state %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
