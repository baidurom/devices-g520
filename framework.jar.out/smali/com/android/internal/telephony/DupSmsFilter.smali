.class Lcom/android/internal/telephony/DupSmsFilter;
.super Ljava/lang/Object;
.source "DupSmsFilter.java"

# interfaces
.implements Lcom/android/internal/telephony/IDupSmsFilter;


# static fields
.field protected static final DEFAULT_DUP_SMS_KEEP_PERIOD:J = 0x493e0L

.field protected static final EVENT_CLEAR_SMS_LIST:I = 0x1

.field protected static final KEY_DUP_SMS_KEEP_PERIOD:Ljava/lang/String; = "dev.dup_sms_keep_period"

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mPhoneId:I

.field protected mSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "DupSmsFilter"

    sput-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "phoneId"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DupSmsFilter;->mPhoneId:I

    .line 32
    iput-object v1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/DupSmsFilter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DupSmsFilter$1;-><init>(Lcom/android/internal/telephony/DupSmsFilter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter;->mHandler:Landroid/os/Handler;

    .line 57
    if-nez p1, :cond_0

    .line 58
    sget-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "FAIL! context is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mPhoneId:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/DupSmsFilter;->sendClearMessage()V

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DupSmsFilter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/internal/telephony/DupSmsFilter;->sendClearMessage()V

    return-void
.end method

.method private sendClearMessage()V
    .locals 5

    .prologue
    .line 47
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "call sendClearMessage"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v2, "dev.dup_sms_keep_period"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 53
    .local v0, delayedPeriod:J
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    return-void
.end method


# virtual methods
.method public containDupSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .parameter "newSms"

    .prologue
    .line 71
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string v3, "call containDupSms"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsMessageBase;

    .line 74
    .local v1, oldSms:Lcom/android/internal/telephony/SmsMessageBase;
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/DupSmsFilter;->isDupSms(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x1

    .line 83
    .end local v1           #oldSms:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    return v2

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v3

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected isDupSms(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 11
    .parameter "newSms"
    .parameter "oldSms"

    .prologue
    const/4 v8, 0x0

    .line 87
    sget-object v9, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string v10, "call isDupSms"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, newAddress:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, oldAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 112
    .end local v0           #newAddress:Ljava/lang/String;
    .end local v4           #oldAddress:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 96
    .restart local v0       #newAddress:Ljava/lang/String;
    .restart local v4       #oldAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v1

    .line 97
    .local v1, newTimestamp:J
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v5

    .line 98
    .local v5, oldTimestamp:J
    cmp-long v9, v1, v5

    if-nez v9, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    .line 103
    .local v3, newUserData:[B
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v7

    .line 104
    .local v7, oldUserData:[B
    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    sget-object v8, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string v9, "find a duplicated sms"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public isTestIccCard(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 117
    const/4 v0, -0x1

    .line 118
    .local v0, ret:I
    if-nez p1, :cond_0

    .line 119
    const-string v2, "gsm.sim.ril.testsim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 124
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTestIccCard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    .line 121
    :cond_0
    const-string v2, "gsm.sim.ril.testsim.2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
