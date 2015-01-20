.class Lcom/mediatek/FMRadio/FMRadioService$1;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1631
    const-string v8, "FmRx/Service"

    const-string v9, ">>> RDS Thread run()"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :goto_0
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRDSThreadExit:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1699
    const-string v8, "FmRx/Service"

    const-string v9, "<<< RDS Thread run()"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    return-void

    .line 1637
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v6

    .line 1638
    .local v6, iRDSEvents:I
    if-eqz v6, :cond_1

    .line 1639
    const-string v8, "FmRx/Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FMRadioNative.readrds events: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_1
    const/16 v8, 0x8

    and-int/lit8 v9, v6, 0x8

    if-ne v8, v9, :cond_2

    .line 1643
    const-string v8, "FmRx/Service"

    const-string v9, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getPS()[B

    move-result-object v2

    .line 1645
    .local v2, bytePS:[B
    if-eqz v2, :cond_2

    .line 1646
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1650
    .end local v2           #bytePS:[B
    :cond_2
    const/16 v8, 0x40

    and-int/lit8 v9, v6, 0x40

    if-ne v8, v9, :cond_3

    .line 1651
    const-string v8, "FmRx/Service"

    const-string v9, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getLRText()[B

    move-result-object v1

    .line 1655
    .local v1, byteLRText:[B
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "gbk"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1656
    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1657
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1665
    .end local v1           #byteLRText:[B
    .end local v7           #str:Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v8, 0x80

    and-int/lit16 v9, v6, 0x80

    if-ne v8, v9, :cond_4

    .line 1666
    const-string v8, "FmRx/Service"

    const-string v9, "RDS_EVENT_AF"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v5

    .line 1668
    .local v5, iFreq:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1673
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v8

    if-ne v8, v5, :cond_5

    .line 1674
    const-string v8, "FmRx/Service"

    const-string v9, "Error: the new frequency is the same as current."

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    .end local v5           #iFreq:I
    :cond_4
    :goto_2
    const/16 v4, 0x64

    .line 1694
    .local v4, hundredMillisecond:I
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1695
    :catch_0
    move-exception v3

    .line 1696
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1676
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v4           #hundredMillisecond:I
    .restart local v5       #iFreq:I
    :cond_5
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v9, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1677
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v9, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1679
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v8, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1502(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1680
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1681
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v9

    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 1682
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1683
    new-instance v0, Landroid/os/Bundle;

    const/4 v8, 0x2

    invoke-direct {v0, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 1684
    .local v0, bundle:Landroid/os/Bundle;
    const-string v8, "callback_flag"

    const v9, 0x100010

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1685
    const-string v8, "key_rds_station"

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1686
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v8, v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1659
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v5           #iFreq:I
    .restart local v1       #byteLRText:[B
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method
