.class public Lcom/android/internal/policy/impl/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/DigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lcom/android/internal/policy/impl/AndroidClockTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/internal/policy/impl/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DigitalClock$1;-><init>(Lcom/android/internal/policy/impl/DigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/DigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/DigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/DigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormat:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAmPm:Lcom/android/internal/policy/impl/DigitalClock$AmPm;

    iget-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 214
    return-void

    .line 212
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 202
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 207
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mTimeDisplay:Lcom/android/internal/policy/impl/AndroidClockTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/AndroidClockTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAmPm:Lcom/android/internal/policy/impl/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 209
    return-void

    .line 208
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 161
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAttached:Z

    .line 164
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DigitalClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 185
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAttached:Z

    .line 188
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 150
    const v0, 0x20e0001

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AndroidClockTextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mTimeDisplay:Lcom/android/internal/policy/impl/AndroidClockTextView;

    .line 151
    new-instance v0, Lcom/android/internal/policy/impl/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mAmPm:Lcom/android/internal/policy/impl/DigitalClock$AmPm;

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 154
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DigitalClock;->setDateFormat()V

    .line 155
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mLive:Z

    .line 218
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/internal/policy/impl/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/DigitalClock;->updateTime()V

    .line 199
    return-void
.end method
