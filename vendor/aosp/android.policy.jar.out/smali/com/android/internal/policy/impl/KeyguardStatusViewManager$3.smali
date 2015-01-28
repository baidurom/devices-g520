.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$DMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMKeyguardUpdate()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1266
    const-string v3, "KeyguardStatusView"

    const-string v6, "onDMKeyguardUpdate()"

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const v6, 0x10202b1

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;
    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)Landroid/view/View;

    move-result-object v2

    .line 1268
    .local v2, unlockWidget:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1269
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1272
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUnlockDisabledDueToSimState:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    const/4 v1, 0x1

    .line 1273
    .local v1, showIfCapable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 1274
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1279
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1280
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDMPrompt:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x2050099

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1284
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    if-eqz v3, :cond_4

    .line 1285
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 1286
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 1292
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePasswordWhenDMChanged(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/view/View;)V

    .line 1296
    .end local v0           #mode:I
    :cond_4
    :goto_4
    return-void

    .end local v1           #showIfCapable:Z
    :cond_5
    move v3, v5

    .line 1269
    goto :goto_0

    :cond_6
    move v1, v5

    .line 1272
    goto :goto_1

    .line 1276
    .restart local v1       #showIfCapable:Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v5, v4

    .line 1280
    goto :goto_3

    .line 1288
    .restart local v0       #mode:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updatePinWhenDMChanged()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->access$2700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    goto :goto_4

    .line 1286
    nop

    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method
