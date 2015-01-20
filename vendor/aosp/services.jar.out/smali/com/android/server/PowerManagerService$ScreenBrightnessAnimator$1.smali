.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2578
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_1

    move v0, v9

    .line 2581
    .local v0, brightnessMode:I
    :goto_0
    iget v11, p1, Landroid/os/Message;->what:I

    const/16 v12, 0xa

    if-ne v11, v12, :cond_c

    .line 2582
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2583
    .local v4, mask:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 2584
    .local v8, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2585
    .local v6, tStart:J
    and-int/lit8 v11, v4, 0x2

    if-eqz v11, :cond_6

    .line 2587
    const-string v11, "1"

    const-string v12, "sys.ipo.shutdown"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2588
    const-string v9, "PowerManagerService"

    const-string v10, "do not turn backlight off/on when/after shutdown with IPO mode!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v8           #value:I
    :cond_0
    :goto_1
    return-void

    .end local v0           #brightnessMode:I
    :cond_1
    move v0, v10

    .line 2578
    goto :goto_0

    .line 2593
    .restart local v0       #brightnessMode:I
    .restart local v4       #mask:I
    .restart local v6       #tStart:J
    .restart local v8       #value:I
    :cond_2
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mMaxBrightness:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v11

    if-lez v11, :cond_3

    .line 2594
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mMaxBrightness:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v11

    if-le v8, v11, :cond_3

    .line 2595
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mMaxBrightness:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)I

    move-result v8

    .line 2598
    :cond_3
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mOldBacklightValue:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)I

    move-result v11

    if-nez v11, :cond_9

    .line 2599
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mShutdownFlag:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2600
    const-string v11, "PowerManagerService_performance"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Animating screen brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2603
    :cond_4
    if-lez v8, :cond_5

    .line 2605
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/tvout/ITVOUTNative;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mediatek/common/tvout/ITVOUTNative;->tvoutPowerEnable(Z)Z

    .line 2606
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v11

    invoke-interface {v11, v9}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPowerEnable(Z)Z

    .line 2621
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mOldBacklightValue:I
    invoke-static {v11, v8}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;I)I

    .line 2623
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v2, v11, v6

    .line 2631
    .local v2, elapsed:J
    and-int/lit8 v11, v4, 0x8

    if-eqz v11, :cond_7

    .line 2632
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2635
    :cond_7
    const-wide/16 v11, 0x64

    cmp-long v11, v2, v11

    if-lez v11, :cond_8

    .line 2636
    const-string v11, "PowerManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Excessive delay setting brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms, mask="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_8
    const-wide/16 v11, 0x10

    cmp-long v11, v2, v11

    if-gez v11, :cond_b

    const/16 v1, 0x10

    .line 2642
    .local v1, delay:I
    :goto_3
    monitor-enter p0

    .line 2643
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v8, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 2644
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v9, v4, v10, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$7100(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    goto/16 :goto_1

    .line 2610
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    :cond_9
    if-nez v8, :cond_a

    .line 2612
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/tvout/ITVOUTNative;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/mediatek/common/tvout/ITVOUTNative;->tvoutPowerEnable(Z)Z

    .line 2613
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->ImHDMI:Lcom/mediatek/common/hdmi/IHDMINative;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Lcom/mediatek/common/hdmi/IHDMINative;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/mediatek/common/hdmi/IHDMINative;->hdmiPowerEnable(Z)Z

    .line 2616
    :cond_a
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mShutdownFlag:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2617
    const-string v11, "PowerManagerService_performance"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Animating screen brightness: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v11, v11, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v11

    invoke-virtual {v11, v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    goto/16 :goto_2

    .restart local v2       #elapsed:J
    :cond_b
    move v1, v9

    .line 2641
    goto :goto_3

    .line 2644
    .restart local v1       #delay:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 2646
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v8           #value:I
    :cond_c
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0xb

    if-ne v9, v10, :cond_0

    .line 2647
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2648
    .local v5, mode:I
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v9, v5}, Lcom/android/server/PowerManagerService;->access$7200(Lcom/android/server/PowerManagerService;I)V

    goto/16 :goto_1
.end method
