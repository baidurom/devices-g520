.class public Lcom/android/camera/FileSaver;
.super Ljava/lang/Thread;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FileSaver$1;,
        Lcom/android/camera/FileSaver$VideoOperator;,
        Lcom/android/camera/FileSaver$PanoOperator;,
        Lcom/android/camera/FileSaver$PhotoOperator;,
        Lcom/android/camera/FileSaver$RequestOperator;,
        Lcom/android/camera/FileSaver$FileSaverListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final QUEUE_LIMIT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileSaver"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mFileNamer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/Util$ImageFileNamer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLimit:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaverListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/FileSaver$FileSaverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStoped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/FileSaver;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/FileSaver;->mQueueLimit:I

    .line 49
    iput-object p1, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    .line 50
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/FileSaver;->start()V

    .line 52
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/FileSaver;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/camera/FileSaver;->LOG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/FileSaver;IJ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/FileSaver;->createName(IJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/FileSaver;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSaveRequest(Lcom/android/camera/SaveRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/camera/FileSaver;->mQueueLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 165
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSaveRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 171
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 571
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 572
    const-string v0, ".mp4"

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 578
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 579
    const-string v0, "video/mp4"

    .line 581
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(IJ)Ljava/lang/String;
    .locals 8
    .parameter "fileType"
    .parameter "dateTaken"

    .prologue
    .line 585
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 586
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    .line 587
    new-instance v2, Lcom/android/camera/Util$ImageFileNamer;

    iget-object v3, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    const v4, 0x7f0c0120

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, photo:Lcom/android/camera/Util$ImageFileNamer;
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/camera/Util$ImageFileNamer;

    iget-object v6, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    const v7, 0x7f0c0121

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v2           #photo:Lcom/android/camera/Util$ImageFileNamer;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 596
    .local v0, date:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, name:Ljava/lang/String;
    sget-boolean v3, Lcom/android/camera/FileSaver;->LOG:Z

    if-eqz v3, :cond_1

    .line 598
    const-string v3, "FileSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_1
    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "originRequest"

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, request:Lcom/android/camera/SaveRequest;
    instance-of v1, p1, Lcom/android/camera/FileSaver$PhotoOperator;

    if-eqz v1, :cond_0

    .line 191
    check-cast p1, Lcom/android/camera/FileSaver$PhotoOperator;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/FileSaver$PhotoOperator;->copyRequest()Lcom/android/camera/FileSaver$PhotoOperator;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 109
    monitor-enter p0

    .line 110
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/FileSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_0
    return-void

    .line 112
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "FileSaver"

    const-string v2, "finish()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishAfterSaved()V
    .locals 2

    .prologue
    .line 123
    sget-boolean v0, Lcom/android/camera/FileSaver;->LOG:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "FileSaver"

    const-string v1, "finishAfterSaved()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    monitor-enter p0

    .line 127
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaitingCount()I
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, count:I
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    monitor-exit p0

    .line 147
    return v0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWaitingDataSize()J
    .locals 6

    .prologue
    .line 133
    const-wide/16 v2, 0x0

    .line 134
    .local v2, totalToWrite:J
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SaveRequest;

    .line 136
    .local v1, r:Lcom/android/camera/SaveRequest;
    invoke-interface {v1}, Lcom/android/camera/SaveRequest;->getDataSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 138
    .end local v1           #r:Lcom/android/camera/SaveRequest;
    :cond_0
    monitor-exit p0

    .line 139
    return-wide v2

    .line 138
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public preparePhotoRequest(II)Lcom/android/camera/SaveRequest;
    .locals 3
    .parameter "type"
    .parameter "pictureType"

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, request:Lcom/android/camera/SaveRequest;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 180
    new-instance v0, Lcom/android/camera/FileSaver$PanoOperator;

    .end local v0           #request:Lcom/android/camera/SaveRequest;
    invoke-direct {v0, p0, p2, v2}, Lcom/android/camera/FileSaver$PanoOperator;-><init>(Lcom/android/camera/FileSaver;ILcom/android/camera/FileSaver$1;)V

    .line 184
    .restart local v0       #request:Lcom/android/camera/SaveRequest;
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->prepareRequest()V

    .line 185
    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcom/android/camera/FileSaver$PhotoOperator;

    .end local v0           #request:Lcom/android/camera/SaveRequest;
    invoke-direct {v0, p0, v2}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .restart local v0       #request:Lcom/android/camera/SaveRequest;
    goto :goto_0
.end method

.method public prepareVideoRequest(ILjava/lang/String;)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 199
    new-instance v0, Lcom/android/camera/FileSaver$VideoOperator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera/FileSaver$VideoOperator;-><init>(Lcom/android/camera/FileSaver;ILjava/lang/String;Lcom/android/camera/FileSaver$1;)V

    .line 200
    .local v0, operator:Lcom/android/camera/FileSaver$VideoOperator;
    invoke-virtual {v0}, Lcom/android/camera/FileSaver$VideoOperator;->prepareRequest()V

    .line 201
    return-object v0
.end method

.method public removeListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 59
    :cond_0
    :goto_0
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    iget-boolean v4, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    if-eqz v4, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    return-void

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "FileSaver"

    const-string v5, "save thread is interrupted."

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 75
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SaveRequest;

    .line 76
    .local v3, r:Lcom/android/camera/SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->saveRequest()V

    .line 81
    :cond_3
    monitor-enter p0

    .line 82
    :try_start_4
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->notifyListener()V

    .line 86
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/FileSaver$FileSaverListener;

    .line 87
    .local v2, listener:Lcom/android/camera/FileSaver$FileSaverListener;
    invoke-interface {v2, v3}, Lcom/android/camera/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/camera/SaveRequest;)V

    goto :goto_2

    .line 84
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/camera/FileSaver$FileSaverListener;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method public waitDone()V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    const-string v2, "waitDone()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-void
.end method
