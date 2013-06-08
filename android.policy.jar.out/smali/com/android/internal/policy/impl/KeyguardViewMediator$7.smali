.class Lcom/android/internal/policy/impl/KeyguardViewMediator$7;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMKeyguardUpdate()V
    .locals 7

    .prologue
    .line 1711
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    .line 1712
    .local v0, dmLock:Z
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDMKeyguardUpdate():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    if-eqz v0, :cond_0

    .line 1714
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1716
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1717
    .local v1, msg:Landroid/os/Message;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1718
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1719
    return-void

    .line 1717
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
