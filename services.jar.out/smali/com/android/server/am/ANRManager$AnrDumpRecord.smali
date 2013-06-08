.class Lcom/android/server/am/ANRManager$AnrDumpRecord;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrDumpRecord"
.end annotation


# instance fields
.field mActivity:Lcom/android/server/am/ActivityRecord;

.field mAnnotation:Ljava/lang/String;

.field mAnrTime:J

.field mApp:Lcom/android/server/am/ProcessRecord;

.field mCpuInfo:Ljava/lang/String;

.field mInfo:Ljava/lang/StringBuilder;

.field mIsCancelled:Z

.field mIsCompleted:Z

.field mParent:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "app"
    .parameter "activity"
    .parameter "parent"
    .parameter "annotation"
    .parameter "anrTime"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 510
    iput-object p2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 511
    iput-object p3, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 512
    iput-object p4, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 513
    iput-object p5, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 514
    iput-wide p6, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnrTime:J

    .line 515
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "AnrDumpRecord{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCancelled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
