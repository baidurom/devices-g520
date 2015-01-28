.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$2;
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
    .line 2359
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$2;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 2362
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$2;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->queryOOBEDisplay()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->access$3400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;)I

    move-result v0

    .line 2364
    .local v0, value:I
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogSequenceManager OOBEObserver--onChange()--oobe_display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager$2;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 2370
    :cond_0
    return-void
.end method
