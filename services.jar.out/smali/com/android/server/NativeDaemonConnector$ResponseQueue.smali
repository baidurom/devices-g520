.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mResponses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "maxCount"

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 500
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    .line 501
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 502
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .locals 8
    .parameter "cmdNum"
    .parameter "response"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v5

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 508
    .local v3, r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v4, p1, :cond_0

    .line 509
    move-object v0, v3

    move-object v1, v0

    .line 513
    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v3           #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .local v1, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_0
    if-nez v1, :cond_2

    .line 516
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v4, v6, :cond_1

    .line 517
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 522
    .restart local v3       #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 529
    .end local v3           #r:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v2           #i$:Ljava/util/Iterator;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 525
    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_3
    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 529
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 530
    monitor-enter v0

    .line 531
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 532
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_1
    move-exception v4

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 529
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2
    move-exception v4

    goto :goto_2

    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    move-object v0, v1

    .end local v1           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v0       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_3

    :cond_3
    move-object v1, v0

    .end local v0           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v1       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 601
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v3

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 604
    .local v1, response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .locals 12
    .parameter "cmdNum"
    .parameter "timeoutMs"
    .parameter "origCmd"

    .prologue
    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    int-to-long v10, p2

    add-long v0, v8, v10

    .line 540
    .local v0, endTime:J
    const/4 v2, 0x0

    .line 542
    .local v2, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_0
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v9

    .line 543
    :try_start_0
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    move-object v3, v2

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .local v3, found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    .line 544
    .local v7, response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    iget v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->cmdNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ne v8, p1, :cond_5

    .line 545
    move-object v2, v7

    .line 547
    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_2
    iget-object v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 555
    :goto_2
    iput-object p3, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    .line 556
    iget-object v8, v7, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/NativeDaemonEvent;

    monitor-exit v9

    .line 587
    .end local v7           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :goto_3
    return-object v8

    .line 550
    .restart local v7       #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :pswitch_0
    const-string v8, "NativeDaemonConnector.ResponseQueue"

    const-string v10, "Continue to wait"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v3, v2

    .line 556
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_1

    .line 553
    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 571
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_0
    move-exception v8

    :goto_5
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 560
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 561
    .local v5, nowTime:J
    cmp-long v8, v0, v5

    if-gtz v8, :cond_1

    .line 562
    const-string v8, "NativeDaemonConnector.ResponseQueue"

    const-string v10, "Timeout waiting for response"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v8, 0x0

    monitor-exit v9

    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_3

    .line 567
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :cond_1
    if-nez v3, :cond_4

    .line 568
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;

    invoke-direct {v2, p1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 569
    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 571
    :goto_6
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 573
    :try_start_5
    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 578
    :try_start_6
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 580
    :try_start_7
    const-string v8, "vold"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v8, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 582
    const-string v8, "vold"

    const-string v10, "Remove response"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v8, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 584
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mResponses:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 586
    :cond_2
    iput-object p3, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->request:Ljava/lang/String;

    .line 587
    iget-object v8, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;->responses:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/NativeDaemonEvent;

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v2

    goto :goto_3

    .line 593
    :catchall_1
    move-exception v8

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 594
    :catch_0
    move-exception v8

    goto/16 :goto_0

    .line 589
    :cond_3
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 592
    sub-long v8, v0, v5

    :try_start_b
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 593
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 589
    :catchall_2
    move-exception v8

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 571
    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v5           #nowTime:J
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto/16 :goto_5

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v5       #nowTime:J
    :cond_4
    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto :goto_6

    .end local v2           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .end local v5           #nowTime:J
    .restart local v3       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v7       #response:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    :cond_5
    move-object v2, v3

    .end local v3           #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    .restart local v2       #found:Lcom/android/server/NativeDaemonConnector$ResponseQueue$Response;
    goto/16 :goto_4

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
