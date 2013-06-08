.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;
.super Landroid/database/ContentObserver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    .line 2328
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->queryDialogSequenceSeetings()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->access$3100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;)I

    move-result v1

    .line 2330
    .local v1, value:I
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogSequenceManager DialogSequenceObserver--onChange()--dialog_sequence_settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-nez v1, :cond_1

    .line 2334
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 2346
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    if-ne v1, v5, :cond_0

    .line 2336
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->access$3200(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogShowCallBack;

    .line 2338
    .local v0, dialogCallBack:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogShowCallBack;
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogSequenceManager DialogSequenceObserver--onChange()--dialogCallBack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --setLocked(true)--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    if-eqz v0, :cond_2

    .line 2342
    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogShowCallBack;->show()V

    .line 2344
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$1;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->setLocked(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->access$3300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;Z)V

    goto :goto_0
.end method
