.class Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediatekGlowPadViewMethods"
.end annotation


# instance fields
.field private final mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter
    .parameter "glowPadView"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    .line 481
    return-void
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 574
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$1900(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    :goto_1
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockScreen"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 586
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "LockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setOnTriggerListener(Lcom/android/internal/policy/impl/MediatekGlowPadView$OnTriggerListener;)V

    .line 626
    return-void
.end method

.method public getTargetPosition(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetPosition(I)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    return-object v0
.end method

.method public isTargetPresent(I)Z
    .locals 2
    .parameter "resId"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 537
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 594
    if-eqz p2, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 597
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 541
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "target"

    .prologue
    .line 544
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getResourceIdForTarget(I)I

    move-result v1

    .line 545
    .local v1, resId:I
    sparse-switch v1, :sswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 547
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$1800(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    .local v0, assistIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 553
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 551
    :cond_0
    const-string v2, "LockScreen"

    const-string v3, "Failed to get intent for assist activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 557
    .end local v0           #assistIntent:Landroid/content/Intent;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->launchActivity(Landroid/content/Intent;)V

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 562
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->toggleRingMode()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 563
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .line 568
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockScreen;->access$400(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 545
    :sswitch_data_0
    .sparse-switch
        0x1080294 -> :sswitch_0
        0x10802dd -> :sswitch_1
        0x10802f6 -> :sswitch_2
        0x10802fe -> :sswitch_3
        0x1080301 -> :sswitch_3
    .end sparse-switch
.end method

.method public ping()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->ping()V

    .line 609
    return-void
.end method

.method public pingInternal()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->pingInternal()V

    .line 614
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->reset(Z)V

    .line 605
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 1
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setEnableTarget(IZ)V

    .line 618
    return-void
.end method

.method public updateResources()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v10, 0x1080294

    .line 489
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 491
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v4, 0x1070009

    .line 498
    .local v4, resId:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$1600(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->orientation:I

    .line 500
    .local v1, currentOrientation:I
    const-string v5, "LockScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResources current orientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCreationOrientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraDisabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEnableRingSilenceFallback="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mEnableRingSilenceFallback:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", resId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldTargetRresource="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetResourceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->getTargetResourceId()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCreationOrientation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 508
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->setTargetResources(I)V

    .line 512
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 513
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$1700(Lcom/android/internal/policy/impl/LockScreen;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 514
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 518
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 519
    .local v0, component:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const-string v8, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v5, v0, v8, v10}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    .line 523
    .local v3, replaced:Z
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->mGlowPadView:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const-string v8, "com.android.systemui.action_assist_icon"

    invoke-virtual {v5, v0, v8, v10}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 526
    const-string v5, "LockScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t grab icon from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #replaced:Z
    :cond_2
    const v8, 0x10802dd

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCameraDisabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$800(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {p0, v8, v5}, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->setEnabled(IZ)V

    .line 532
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSearchDisabled:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/LockScreen;->access$1200(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-virtual {p0, v10, v6}, Lcom/android/internal/policy/impl/LockScreen$MediatekGlowPadViewMethods;->setEnabled(IZ)V

    .line 533
    return-void

    .line 491
    .end local v1           #currentOrientation:I
    .end local v4           #resId:I
    :cond_3
    const v4, 0x107000c

    goto/16 :goto_0

    .line 494
    :cond_4
    const v4, 0x107000e

    .restart local v4       #resId:I
    goto/16 :goto_0

    .restart local v1       #currentOrientation:I
    :cond_5
    move v5, v7

    .line 531
    goto :goto_1

    :cond_6
    move v6, v7

    .line 532
    goto :goto_2
.end method
