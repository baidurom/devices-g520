.class Lcom/android/server/pm/ShutdownThread$QbShutdown;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QbShutdown"
.end annotation


# static fields
.field private static final DEFAULT_CHECKED:Z = true


# instance fields
.field private mAlarmIdx:I

.field private mAlarmInfoArray:[I

.field private mAlarmWarnArray:[I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mNowRTC:J

.field private mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

.field private final mQbConfirmView:Landroid/view/View;

.field private mTextViewInfo:Landroid/widget/TextView;

.field private mTextViewWarn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "qbConfirmView"

    .prologue
    const/4 v1, 0x2

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    .line 413
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmInfoArray:[I

    .line 418
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    .line 427
    iput-object p2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    .line 428
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    .line 429
    invoke-direct {p0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->init()V

    .line 430
    return-void

    .line 413
    :array_0
    .array-data 0x4
        #string@quickboot_poweroff_alarm#a
        #string@quickboot_schedule_pwonoff#a
    .end array-data

    .line 418
    :array_1
    .array-data 0x4
        #string@quickboot_lowbat_poweroff#a
        #string@quickboot_lowbat_schedule_pwonoff#a
    .end array-data
.end method

.method static synthetic access$400(Lcom/android/server/pm/ShutdownThread$QbShutdown;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/ShutdownThread$QbShutdown;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->updateConfirmView(Z)V

    return-void
.end method

.method private beginQbShutdown()V
    .locals 4

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 564
    .local v0, isQbShutdown:Z
    const/4 v1, 0x0

    .line 566
    .local v1, pwoffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;
    iget v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    if-eqz v0, :cond_0

    .line 568
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget-object v1, v2, v3

    .line 574
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/server/pm/ShutdownThread;->access$702(Landroid/app/AlarmManager$PoweroffAlarm;)Landroid/app/AlarmManager$PoweroffAlarm;

    .line 575
    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$802(Z)Z

    .line 577
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/server/pm/ShutdownThread;->access$000(Landroid/content/Context;)V

    .line 578
    return-void

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->setQuickBootEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private dateToWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .parameter "date"

    .prologue
    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 489
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 490
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 492
    .local v1, dayIndex:I
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #array@quickboot_info_week_set#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, dayOfWeekArray:[Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 496
    :cond_0
    const/4 v3, 0x0

    .line 499
    :goto_0
    return-object v3

    :cond_1
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method private static getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I
    .locals 7
    .parameter "alarmArray"
    .parameter "nowRTC"

    .prologue
    .line 433
    const/4 v4, -0x1

    .line 434
    .local v4, nextPwoffIdx:I
    const-wide v2, 0x7fffffffffffffffL

    .line 436
    .local v2, nextPwoffAlarmTime:J
    if-eqz p0, :cond_1

    .line 437
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 438
    aget-object v0, p0, v1

    .line 439
    .local v0, alarm:Landroid/app/AlarmManager$PoweroffAlarm;
    iget-wide v5, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    iget-wide v5, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    .line 440
    iget-wide v2, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    .line 441
    move v4, v1

    .line 437
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v0           #alarm:Landroid/app/AlarmManager$PoweroffAlarm;
    .end local v1           #idx:I
    :cond_1
    return v4
.end method

.method public static hasPoweroffAlarm(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 453
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 455
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 456
    .local v1, nowRTC:J
    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->getPoweroffAlarm(J)[Landroid/app/AlarmManager$PoweroffAlarm;

    move-result-object v3

    .line 459
    .local v3, pwoffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;
    invoke-static {v3, v1, v2}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v4

    return v4
.end method

.method private init()V
    .locals 4

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_text_info#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    .line 509
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_text_warn#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    .line 512
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_checkbox#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    .line 515
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 517
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mNowRTC:J

    .line 518
    iget-wide v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mNowRTC:J

    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->getPoweroffAlarm(J)[Landroid/app/AlarmManager$PoweroffAlarm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    .line 519
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget-wide v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mNowRTC:J

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    .line 521
    invoke-direct {p0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->initConfirmView()V

    goto :goto_0
.end method

.method private initConfirmView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 525
    iget v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 527
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    new-instance v1, Ljava/util/Date;

    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget v4, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget-object v3, v3, v4

    iget-wide v3, v3, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 531
    .local v1, pwoffDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmInfoArray:[I

    iget v6, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->dateToWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    iget v6, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 540
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 541
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 542
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #pwoffDate:Ljava/util/Date;
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->isQuickBootEnabled(Landroid/content/Context;)Z
    invoke-static {v3}, Lcom/android/server/pm/ShutdownThread;->access$600(Landroid/content/Context;)Z

    move-result v2

    .line 545
    .local v2, qbEnable:Z
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 546
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 548
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v3, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    const v4, #string@quick_boot_text_info#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private static isAvaliableAlarmIdx(I)Z
    .locals 1
    .parameter "alarmIdx"

    .prologue
    .line 449
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQuickBootEnabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 464
    #calls: Lcom/android/server/pm/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread;->access$303(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "baidu_settings_quickboot"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :cond_0
    return-void

    .line 465
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConfirmView(Z)V
    .locals 3
    .parameter "isQbChecked"

    .prologue
    .line 555
    iget v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    iget v2, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 560
    :cond_0
    return-void

    .line 556
    :cond_1
    const v0, #string@quickboot_real_shutdown#t

    goto :goto_0
.end method


# virtual methods
.method public isAvaliable()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->beginQbShutdown()V

    .line 584
    return-void
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/pm/ShutdownThread$QbShutdown$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/ShutdownThread$QbShutdown$1;-><init>(Lcom/android/server/pm/ShutdownThread$QbShutdown;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 485
    return-void
.end method
