.class Lcom/android/internal/policy/impl/KeyguardViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SystemStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysBootup()V
    .locals 4

    .prologue
    .line 398
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSysBootup called, mScrnOrientationModeBeforeShutdown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardViewManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$700(Lcom/android/internal/policy/impl/KeyguardViewManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 402
    return-void
.end method

.method public onSysShutdown()V
    .locals 3

    .prologue
    .line 384
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSysShutdown called."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mScrnOrientationModeBeforeShutdown:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$702(Lcom/android/internal/policy/impl/KeyguardViewManager;I)I

    .line 389
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->mH:Lcom/android/internal/policy/impl/KeyguardViewManager$H;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 395
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mWindowLayoutParams is null, ignore the message."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
