.class public Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;
.super Ljava/lang/Thread;
.source "OppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/opp/adp/OppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OppcTaskTransferThread"
.end annotation


# instance fields
.field private mParam:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/opp/adp/OppManager;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "param"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    .line 996
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 997
    iput-object p3, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->mParam:[Ljava/lang/Object;

    .line 998
    return-void
.end method


# virtual methods
.method public declared-synchronized oppcHandleTask()V
    .locals 14

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1015
    .local v0, batchTimestamp:J
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->mParam:[Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v3, v11, v12

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1016
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->mParam:[Ljava/lang/Object;

    const/4 v12, 0x1

    aget-object v2, v11, v12

    check-cast v2, Ljava/util/ArrayList;

    .line 1017
    .local v2, cachedTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/share/BluetoothShareTask;>;"
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1018
    .local v5, deviceName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, deviceAddr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/bluetooth/share/BluetoothShareTask;

    .line 1021
    .local v9, task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppManager;->mApplicationContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->access$000(Lcom/mediatek/bluetooth/opp/adp/OppManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v9}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getObjectUri()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/bluetooth/opp/mmi/UriDataUtils;->getUriData(Landroid/content/Context;Landroid/net/Uri;)Lcom/mediatek/bluetooth/opp/mmi/UriData;

    move-result-object v10

    .line 1022
    .local v10, ud:Lcom/mediatek/bluetooth/opp/mmi/UriData;
    if-eqz v10, :cond_0

    .line 1024
    invoke-virtual {v10}, Lcom/mediatek/bluetooth/opp/mmi/UriData;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setObjectName(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v10}, Lcom/mediatek/bluetooth/opp/mmi/UriData;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setData(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v10}, Lcom/mediatek/bluetooth/opp/mmi/UriData;->getSize()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setTotalBytes(J)V

    .line 1027
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setState(I)V

    .line 1036
    :goto_1
    invoke-virtual {v9, v5}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setPeerName(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v9, v4}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setPeerAddr(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v9, v0, v1}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setCreationDate(J)V

    .line 1039
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->access$100(Lcom/mediatek/bluetooth/opp/adp/OppManager;)Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getContentValues()Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1048
    .local v8, newUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setId(I)V

    .line 1049
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    invoke-virtual {v11, v9}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->notifyOppTask(Lcom/mediatek/bluetooth/share/BluetoothShareTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1014
    .end local v0           #batchTimestamp:J
    .end local v2           #cachedTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/share/BluetoothShareTask;>;"
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #deviceAddr:Ljava/lang/String;
    .end local v5           #deviceName:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #newUri:Landroid/net/Uri;
    .end local v9           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .end local v10           #ud:Lcom/mediatek/bluetooth/opp/mmi/UriData;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1029
    .restart local v0       #batchTimestamp:J
    .restart local v2       #cachedTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/share/BluetoothShareTask;>;"
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v4       #deviceAddr:Ljava/lang/String;
    .restart local v5       #deviceName:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .restart local v10       #ud:Lcom/mediatek/bluetooth/opp/mmi/UriData;
    :cond_0
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oppcSubmitTask - invalid task object: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->getPrintableString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->w(Ljava/lang/String;)V

    .line 1032
    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Lcom/mediatek/bluetooth/share/BluetoothShareTask;->setState(I)V

    goto :goto_1

    .line 1053
    .end local v9           #task:Lcom/mediatek/bluetooth/share/BluetoothShareTask;
    .end local v10           #ud:Lcom/mediatek/bluetooth/opp/mmi/UriData;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1054
    const/4 v2, 0x0

    .line 1057
    new-instance v7, Landroid/content/Intent;

    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppManager;->mApplicationContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->access$000(Lcom/mediatek/bluetooth/opp/adp/OppManager;)Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/mediatek/bluetooth/opp/adp/OppService;

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    .local v7, intent:Landroid/content/Intent;
    const-string v11, "com.mediatek.bluetooth.opp.action.OPPC_START"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    iget-object v11, p0, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->this$0:Lcom/mediatek/bluetooth/opp/adp/OppManager;

    #getter for: Lcom/mediatek/bluetooth/opp/adp/OppManager;->mApplicationContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/bluetooth/opp/adp/OppManager;->access$000(Lcom/mediatek/bluetooth/opp/adp/OppManager;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    monitor-exit p0

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oppc Task handler thread start: thread name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 1004
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1006
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/opp/adp/OppManager$OppcTaskTransferThread;->oppcHandleTask()V

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oppc Task handler thread end: thread name - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/bluetooth/opp/mmi/OppLog;->d(Ljava/lang/String;)V

    .line 1010
    return-void
.end method
