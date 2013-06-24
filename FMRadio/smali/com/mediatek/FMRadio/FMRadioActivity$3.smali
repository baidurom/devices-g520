.class Lcom/mediatek/FMRadio/FMRadioActivity$3;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 340
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 423
    :pswitch_0
    const-string v0, "FmRx/Activity"

    const-string v1, "invalid view id"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 352
    :pswitch_1
    const-string v0, "FmRx/Activity"

    const-string v1, "btn record: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v2, 0x7f04003e

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordNotIdle()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 363
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 366
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v1, "startRecordTime"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;J)V

    .line 367
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->startRecordingAsync()V

    goto :goto_0

    .line 372
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "btn stop: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    if-nez v0, :cond_2

    .line 374
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordNotIdle()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 378
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecordingAsync()V

    .line 379
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlaybackAsync()V

    goto/16 :goto_0

    .line 383
    :pswitch_3
    const-string v0, "FmRx/Activity"

    const-string v1, "btn playback: CLICK!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    if-nez v0, :cond_3

    .line 385
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordNotIdle()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 390
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v1, "startPlayTime"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v2

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;J)V

    .line 391
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->startPlaybackAsync()V

    goto/16 :goto_0

    .line 395
    :pswitch_4
    const-string v0, "FmRx/Activity"

    const-string v1, "onClick AddToFavorite start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->updateFavoriteStation()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 397
    const-string v0, "FmRx/Activity"

    const-string v1, "onClick AddToFavorite end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeDecreaseStation(I)I

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 407
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeIncreaseStation(I)I

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 411
    :pswitch_7
    const-string v0, "FmRx/Activity"

    const-string v1, "onClick PrevStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V

    goto/16 :goto_0

    .line 418
    :pswitch_8
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V

    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x7f060035
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
