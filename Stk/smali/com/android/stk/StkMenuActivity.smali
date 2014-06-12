.class public Lcom/android/stk/StkMenuActivity;
.super Landroid/app/ListActivity;
.source "StkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkMenuActivity$AirplaneBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Stk-MA "

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field static final STATE_END:I = 0x3

.field static final STATE_MAIN:I = 0x1

.field static final STATE_SECONDARY:I = 0x2


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mAcceptUsersInput:Z

.field private mContext:Landroid/content/Context;

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mProgressView:Landroid/widget/ProgressBar;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private mStkMenu:Lcom/android/internal/telephony/cat/Menu;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 95
    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 96
    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 98
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 102
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    .line 104
    new-instance v0, Lcom/android/stk/StkMenuActivity$AirplaneBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkMenuActivity$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/StkMenuActivity;Lcom/android/stk/StkMenuActivity$1;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 109
    new-instance v0, Lcom/android/stk/StkMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$1;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/android/stk/StkMenuActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$2;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 289
    new-instance v0, Lcom/android/stk/StkMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkMenuActivity$3;-><init>(Lcom/android/stk/StkMenuActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 518
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkMenuActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/stk/StkMenuActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/stk/StkMenuActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/stk/StkMenuActivity;)Lcom/android/internal/telephony/cat/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    return-void
.end method

.method private displayMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-nez v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 457
    :goto_1
    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[BZ)V

    .line 460
    .local v0, adapter:Lcom/android/stk/StkMenuAdapter;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 462
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v1, v1, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setSelection(I)V

    .line 464
    .end local v0           #adapter:Lcom/android/stk/StkMenuAdapter;
    :cond_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 454
    :cond_3
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 4
    .parameter "position"

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_0

    .line 482
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    :cond_0
    :goto_0
    return-object v2

    .line 483
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 489
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Invalid menu"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 468
    if-eqz p1, :cond_1

    .line 469
    const-string v0, "STATE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 470
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0
.end method

.method private isOnFlightMode()Z
    .locals 5

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 539
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :goto_0
    const-string v2, "Stk-MA "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airlane mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Stk-MA "

    const-string v3, "fail to get airlane mode"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    goto :goto_0

    .line 547
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, p1, v0, v0}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 498
    return-void
.end method

.method private sendResponse(IIZ)V
    .locals 5
    .parameter "resId"
    .parameter "itemId"
    .parameter "help"

    .prologue
    const/4 v2, 0x2

    .line 501
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    if-eq v2, v1, :cond_0

    const/16 v1, 0x16

    if-ne v1, p1, :cond_0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore response of End Session in mState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string v1, "menu selection"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v1, "help"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/stk/StkAppService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private showTextToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 532
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 533
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    return-void
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    .line 427
    iget v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 430
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 307
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 321
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 309
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 310
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 311
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    .line 312
    .local v1, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_0

    .line 316
    const/16 v3, 0xb

    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v3, v4, v2}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/stk/StkMenuActivity;->requestWindowFeature(I)Z

    .line 154
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->setContentView(I)V

    .line 156
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f070015

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mTitleIconView:Landroid/widget/ImageView;

    .line 158
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/android/stk/StkMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    .line 159
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkMenuActivity;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 162
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/stk/StkMenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/stk/StkMenuActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f060035

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 326
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 327
    const v0, 0x7f060034

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 328
    const/4 v0, 0x2

    invoke-interface {p1, v1, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 329
    const/4 v0, 0x4

    invoke-interface {p1, v1, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 330
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 205
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_0

    .line 222
    :goto_0
    return v0

    .line 209
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 211
    :pswitch_0
    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 213
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 215
    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 211
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 188
    iget-boolean v1, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    .line 193
    .local v0, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 196
    const/16 v1, 0xb

    iget v2, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 197
    iput-boolean v3, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 198
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 179
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/android/stk/StkMenuActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 370
    iget-boolean v4, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v4, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v3

    .line 373
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 407
    :cond_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 376
    iput-boolean v6, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 378
    const/16 v4, 0x16

    invoke-direct {p0, v4}, Lcom/android/stk/StkMenuActivity;->sendResponse(I)V

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 382
    iput-boolean v6, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/stk/StkMenuActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object v2

    .line 386
    .local v2, stkItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v2, :cond_2

    .line 390
    iget v4, v2, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v7, v4, v3}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    goto :goto_0

    .line 393
    .end local v1           #position:I
    .end local v2           #stkItem:Lcom/android/internal/telephony/cat/Item;
    :pswitch_3
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v5, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v5, v5, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 395
    .local v0, defaultItem:Lcom/android/internal/telephony/cat/Item;
    if-eqz v0, :cond_0

    .line 398
    iget v4, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-direct {p0, v7, v4, v6}, Lcom/android/stk/StkMenuActivity;->sendResponse(IIZ)V

    .line 400
    iput-boolean v6, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 401
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 277
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->cancelTimeOut()V

    .line 278
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 335
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, helpVisible:Z
    const/4 v2, 0x0

    .line 339
    .local v2, mainVisible:Z
    iget v3, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 340
    const/4 v2, 0x1

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v0, v3, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 346
    :cond_1
    if-eqz v2, :cond_2

    .line 347
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060034

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 349
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    if-eqz v0, :cond_3

    .line 352
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f060035

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 354
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_5

    .line 357
    iget-object v3, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v4, v4, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 358
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 359
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 365
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_5
    :goto_0
    return v5

    .line 361
    .restart local v1       #item:Lcom/android/internal/telephony/cat/Item;
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 362
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 418
    const-string v0, "STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 419
    const-string v0, "MENU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 420
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 228
    const-string v0, "Stk-MA "

    const-string v1, "onResume +"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getIsSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "Stk-MA "

    const-string v1, "sim not ready, can not use the app"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->showTextToast(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    .line 270
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->isOnFlightMode()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 238
    const-string v0, "Stk-MA "

    const-string v1, "don\'t make stk be visible"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->showTextToast(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    if-nez v0, :cond_2

    .line 246
    const-string v0, "Stk-MA "

    const-string v1, "can not launch stk menu \'cause null StkAppService"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->indicateMenuVisibility(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 253
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    if-nez v0, :cond_3

    .line 254
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/stk/StkMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkMenuActivity;->showTextToast(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/stk/StkMenuActivity;->finish()V

    goto :goto_0

    .line 258
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->displayMenu()V

    .line 259
    invoke-direct {p0}, Lcom/android/stk/StkMenuActivity;->startTimeOut()V

    .line 263
    iget-boolean v0, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    if-nez v0, :cond_4

    .line 264
    iput v2, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    .line 265
    iput-boolean v2, p0, Lcom/android/stk/StkMenuActivity;->mAcceptUsersInput:Z

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/stk/StkMenuActivity;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 412
    const-string v0, "STATE"

    iget v1, p0, Lcom/android/stk/StkMenuActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v0, "MENU"

    iget-object v1, p0, Lcom/android/stk/StkMenuActivity;->mStkMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 414
    return-void
.end method
