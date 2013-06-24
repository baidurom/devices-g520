.class Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_DELETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioStation;->isDBEmpty(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getNextStation(Landroid/content/Context;)I

    move-result v1

    .line 282
    .local v1, iStation:I
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v4, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 283
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static {v4, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 284
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 285
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 286
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 287
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 333
    .end local v1           #iStation:I
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 290
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 291
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 292
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 293
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 294
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto :goto_0

    .line 297
    :cond_2
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 298
    const-string v4, "state"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, mValueHeadSetPlug:I
    if-nez v2, :cond_0

    .line 300
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "NoAntenna"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;

    .line 306
    .local v3, newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    if-nez v3, :cond_0

    .line 307
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->showNoAntennaDialog()V

    goto :goto_0

    .line 312
    .end local v2           #mValueHeadSetPlug:I
    .end local v3           #newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    :cond_4
    const-string v4, "com.mediatek.FMRadio.FMRadioFavorite.ACTION_HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    goto :goto_0

    .line 317
    :cond_5
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 318
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 319
    .restart local v1       #iStation:I
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V
    invoke-static {v4, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 320
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 321
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 322
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 323
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto/16 :goto_0

    .line 327
    .end local v1           #iStation:I
    :cond_6
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_STOPED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->dismiss()V

    goto/16 :goto_0
.end method
