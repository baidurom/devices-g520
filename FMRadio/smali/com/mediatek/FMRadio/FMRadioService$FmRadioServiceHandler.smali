.class Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmRadioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2406
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    .line 2407
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2408
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 2413
    const/4 v8, 0x0

    .line 2415
    .local v8, isPowerup:Z
    const/4 v11, 0x0

    .line 2418
    .local v11, isSwitch:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 2616
    :goto_0
    :pswitch_0
    return-void

    .line 2425
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2426
    .local v16, time:J
    const-string v19, "FmRx/Service"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "performance test. service handler power up start:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2428
    .local v3, bundle:Landroid/os/Bundle;
    const-string v19, "frequency"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 2429
    .local v5, curFrequency:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;I)I

    move-result v19

    if-nez v19, :cond_0

    const/4 v11, 0x1

    .line 2434
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2438
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #bundle:Landroid/os/Bundle;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2439
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2440
    const-string v19, "key_is_switch_anntenna"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2429
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 2445
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->initDevice(F)Z
    invoke-static {v0, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v8

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mPausedByTransientLossOfFocus:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2453
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUping:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsShortAntennaSupport:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 2455
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #bundle:Landroid/os/Bundle;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2456
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2457
    const-string v19, "key_is_power_up"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    .line 2459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2460
    const-string v19, "FmRx/Service"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "performance test. service handler power up end:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2450
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsMakePowerDown:Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_2

    .line 2465
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v5           #curFrequency:F
    .end local v16           #time:J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    move-result v7

    .line 2466
    .local v7, isPowerdown:Z
    new-instance v3, Landroid/os/Bundle;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2467
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2468
    const-string v19, "key_is_power_down"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2474
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v7           #isPowerdown:Z
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSpeakerUsed:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 2477
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->closeDevice()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->release()V

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$1902(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2485
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2486
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2492
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2493
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "switch_anntenna_value"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;I)I

    move-result v19

    if-nez v19, :cond_5

    const/4 v11, 0x1

    .line 2494
    :goto_3
    const-string v19, "FmRx/Service"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FmServiceHandler.switch anntenna:isWitch:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2493
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 2503
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2504
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "frequency"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v18

    .line 2505
    .local v18, tuneStation:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v12

    .line 2506
    .local v12, isTune:Z
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #bundle:Landroid/os/Bundle;
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2507
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0xf

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2508
    const-string v19, "key_is_tune"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2509
    const-string v19, "key_tune_to_station"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2510
    const-string v19, "key_is_power_up"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2516
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v12           #isTune:Z
    .end local v18           #tuneStation:F
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2517
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "frequency"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v20

    const-string v21, "option"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->seekStation(FZ)F
    invoke-static/range {v19 .. v21}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;FZ)F

    move-result v14

    .line 2519
    .local v14, seekStation:F
    const/4 v10, 0x0

    .line 2520
    .local v10, isSeekTune:Z
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeStation(F)I

    move-result v15

    .line 2521
    .local v15, station:I
    invoke-static {v15}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static {v0, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v10

    .line 2524
    :cond_6
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #bundle:Landroid/os/Bundle;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2525
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0xf

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2526
    const-string v19, "key_is_tune"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2527
    const-string v19, "key_tune_to_station"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2533
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v10           #isSeekTune:Z
    .end local v14           #seekStation:F
    .end local v15           #station:I
    :pswitch_7
    const/4 v4, 0x0

    .line 2534
    .local v4, channels:[I
    const/4 v13, 0x0

    .line 2535
    .local v13, result:[I
    const/4 v9, 0x1

    .line 2536
    .local v9, isScan:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    sget v20, Lcom/mediatek/FMRadio/FMRadioUtils;->DEFAULT_STATION_FLOAT:F

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->powerUpFM(F)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startScan()[I
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$3400(Lcom/mediatek/FMRadio/FMRadioService;)[I

    move-result-object v4

    .line 2541
    :cond_7
    if-eqz v4, :cond_8

    const/16 v19, 0x0

    aget v19, v4, v19

    const/16 v20, -0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2542
    const-string v19, "FmRx/Service"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "user canceled scan:channels[0]="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget v21, v4, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v9, 0x0

    .line 2544
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v13, v0, [I

    .end local v13           #result:[I
    fill-array-data v13, :array_0

    .line 2552
    .restart local v13       #result:[I
    :goto_4
    new-instance v3, Landroid/os/Bundle;

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2553
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "callback_flag"

    const/16 v20, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2554
    const-string v19, "key_tune_to_station"

    const/16 v20, 0x0

    aget v20, v13, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2555
    const-string v19, "key_station_num"

    const/16 v20, 0x1

    aget v20, v13, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2556
    const-string v19, "key_is_scan"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2546
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->insertSearchedStation([I)[I
    invoke-static {v0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$3500(Lcom/mediatek/FMRadio/FMRadioService;[I)[I

    move-result-object v13

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v20, v13, v20

    invoke-static/range {v20 .. v20}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->tuneStation(F)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;F)Z

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->resumeFMAudio()V

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3600(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto :goto_4

    .line 2562
    .end local v4           #channels:[I
    .end local v9           #isScan:Z
    .end local v13           #result:[I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2563
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v19, "key_audiofocus_changed"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2564
    .local v6, focusState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateAudioFocus(I)V
    invoke-static {v0, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$3700(Lcom/mediatek/FMRadio/FMRadioService;I)V

    goto/16 :goto_0

    .line 2568
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v6           #focusState:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2569
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "option"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto/16 :goto_0

    .line 2573
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2574
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "option"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setAudioChannel(Z)Z
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3900(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto/16 :goto_0

    .line 2578
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2579
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "option"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$3600(Lcom/mediatek/FMRadio/FMRadioService;Z)I

    goto/16 :goto_0

    .line 2583
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->activeAF()I
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$4000(Lcom/mediatek/FMRadio/FMRadioService;)I

    goto/16 :goto_0

    .line 2588
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startRecording()V
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$4100(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto/16 :goto_0

    .line 2592
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRecording()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$4200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    goto/16 :goto_0

    .line 2596
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startPlayback()Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$4300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    goto/16 :goto_0

    .line 2600
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopPlayback()V
    invoke-static/range {v19 .. v19}, Lcom/mediatek/FMRadio/FMRadioService;->access$4400(Lcom/mediatek/FMRadio/FMRadioService;)V

    goto/16 :goto_0

    .line 2604
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2605
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "option"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setRecordingMode(Z)V
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$4500(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_0

    .line 2609
    .end local v3           #bundle:Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 2610
    .restart local v3       #bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    move-object/from16 v19, v0

    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->saveRecording(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioService;->access$4600(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2418
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 2544
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
