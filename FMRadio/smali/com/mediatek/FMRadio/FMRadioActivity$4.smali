.class Lcom/mediatek/FMRadio/FMRadioActivity$4;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .parameter "className"
    .parameter "service"

    .prologue
    .line 634
    const-string v7, "FmRx/Activity"

    const-string v8, "FMRadioActivity.onServiceConnected start"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    check-cast p2, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/FMRadio/FMRadioService$ServiceBinder;->getService()Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1402(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;

    .line 636
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    if-nez v7, :cond_0

    .line 637
    const-string v7, "FmRx/Activity"

    const-string v8, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 745
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/FMRadio/FMRadioService;->registerFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 644
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isServiceInit()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 645
    const-string v7, "FmRx/Activity"

    const-string v8, "ServiceConnection: FM service is already init"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isDeviceOpen()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 649
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 650
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 651
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 653
    :cond_1
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateCurrentStation()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 654
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 655
    .local v1, isPlaying:Z
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v7, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 656
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v3

    .line 657
    .local v3, isSearching:Z
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isSeeking()Z

    move-result v4

    .line 658
    .local v4, isSeeking:Z
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v2

    .line 659
    .local v2, isScan:Z
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isMakePowerDown()Z

    move-result v0

    .line 660
    .local v0, isMakePowerdown:Z
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceConnect:isSeeking:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    if-nez v2, :cond_2

    if-eqz v4, :cond_d

    :cond_2
    const/4 v7, 0x0

    :goto_1
    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 665
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    if-nez v2, :cond_3

    if-eqz v4, :cond_e

    :cond_3
    const/4 v7, 0x0

    :goto_2
    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 666
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    if-nez v2, :cond_4

    if-eqz v4, :cond_f

    :cond_4
    const/4 v7, 0x0

    :goto_3
    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 669
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onservice connect.mIsNeedDisablePower: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    if-nez v2, :cond_5

    if-eqz v4, :cond_10

    :cond_5
    const/4 v7, 0x0

    :goto_4
    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 675
    if-eqz v4, :cond_6

    .line 676
    const-string v7, "FmRx/Activity"

    const-string v8, "ServiceConnection: it is seeking"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 680
    :cond_6
    if-nez v3, :cond_7

    .line 681
    const-string v7, "FmRx/Activity"

    const-string v8, "ServiceConnection: mIsSearching is false"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 688
    :cond_7
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 689
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    :cond_8
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 694
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onservice connetct.reume recordDlg.mPrevRecorderState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSaveRecordingDialog(Ljava/lang/String;)V

    .line 696
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 700
    :cond_9
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 701
    const-string v7, "FmRx/Activity"

    const-string v8, "onservice connetct.reume noAntennaDlg:"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->showNoAntennaDialog()V

    .line 703
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 704
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 707
    :cond_a
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateRds()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 711
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingMode()Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 713
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/FMRadio/FMRadioService;->getRecorderState()I

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3602(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 714
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v8, 0x7f06003f

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 716
    .local v5, recInfoBar:Landroid/widget/RelativeLayout;
    const/4 v7, 0x6

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    if-eq v7, v8, :cond_b

    const/4 v7, 0x7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    if-ne v7, v8, :cond_13

    .line 718
    :cond_b
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v8, "FMRecord"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 719
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v8, "startRecordTime"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v7, v8, v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 720
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v8, "startPlayTime"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v7, v8, v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 721
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 722
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&&&sendemptyMessage:mRecoderStart:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 728
    .end local v6           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_5
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 729
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 730
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 731
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, -0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 744
    .end local v0           #isMakePowerdown:Z
    .end local v1           #isPlaying:Z
    .end local v2           #isScan:Z
    .end local v3           #isSearching:Z
    .end local v4           #isSeeking:Z
    .end local v5           #recInfoBar:Landroid/widget/RelativeLayout;
    :cond_c
    :goto_6
    const-string v7, "FmRx/Activity"

    const-string v8, "FMRadioActivity.onServiceConnected end"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0       #isMakePowerdown:Z
    .restart local v1       #isPlaying:Z
    .restart local v2       #isScan:Z
    .restart local v3       #isSearching:Z
    .restart local v4       #isSeeking:Z
    :cond_d
    move v7, v1

    .line 664
    goto/16 :goto_1

    :cond_e
    move v7, v1

    .line 665
    goto/16 :goto_2

    :cond_f
    move v7, v1

    .line 666
    goto/16 :goto_3

    .line 670
    :cond_10
    if-nez v1, :cond_11

    if-eqz v0, :cond_12

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_12

    :cond_11
    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 725
    .restart local v5       #recInfoBar:Landroid/widget/RelativeLayout;
    :cond_13
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 736
    .end local v0           #isMakePowerdown:Z
    .end local v1           #isPlaying:Z
    .end local v2           #isScan:Z
    .end local v3           #isSearching:Z
    .end local v4           #isSeeking:Z
    .end local v5           #recInfoBar:Landroid/widget/RelativeLayout;
    :cond_14
    const-string v7, "FmRx/Activity"

    const-string v8, "Error: FM device is not open"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 739
    :cond_15
    const-string v7, "FmRx/Activity"

    const-string v8, "ServiceConnection: FM service is not init"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/FMRadio/FMRadioService;->initService(I)V

    .line 742
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_6
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 754
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method
