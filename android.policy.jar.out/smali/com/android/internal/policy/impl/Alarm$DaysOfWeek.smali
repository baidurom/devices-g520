.class final Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "days"

    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput p1, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    .line 322
    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .parameter "day"

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 385
    new-array v1, v3, [Z

    .line 386
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 387
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x7

    .line 401
    iget v3, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 402
    const/4 v1, -0x1

    .line 415
    :cond_0
    return v1

    .line 405
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 407
    .local v2, today:I
    const/4 v0, 0x0

    .line 408
    .local v0, day:I
    const/4 v1, 0x0

    .line 409
    .local v1, dayCount:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 410
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 411
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .parameter "day"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 368
    if-eqz p2, :cond_0

    .line 369
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;)V
    .locals 1
    .parameter "dow"

    .prologue
    .line 376
    iget v0, p1, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    .line 377
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "showNever"

    .prologue
    const/4 v8, 0x1

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v5, ret:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1

    .line 329
    if-eqz p2, :cond_0

    const v6, 0x20500d9

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    :goto_0
    return-object v6

    .line 329
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 334
    :cond_1
    iget v6, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 335
    const v6, 0x20500db

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x0

    .local v0, dayCount:I
    iget v2, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    .line 340
    .local v2, days:I
    :goto_1
    if-lez v2, :cond_4

    .line 341
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_3
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    :cond_4
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 347
    .local v3, dfs:Ljava/text/DateFormatSymbols;
    if-le v0, v8, :cond_6

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, dayList:[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    const/4 v6, 0x7

    if-ge v4, v6, :cond_7

    .line 353
    iget v6, p0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 354
    sget-object v6, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v0, v0, -0x1

    .line 356
    if-lez v0, :cond_5

    const v6, 0x20500da

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 352
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    .end local v1           #dayList:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_6
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 360
    .restart local v1       #dayList:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
