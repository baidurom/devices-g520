.class public Lcom/android/internal/policy/impl/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_ALERT"

.field public static final ALARM_ALERT_SILENT:Ljava/lang/String; = "silent"

.field public static final ALARM_KILLED:Ljava/lang/String; = "alarm_killed"

.field public static final ALARM_KILLED_TIMEOUT:Ljava/lang/String; = "alarm_killed_timeout"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "intent.extra.alarm_raw"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E kk:mm"

.field static final INVALID_ALARM_ID:I = -0x1

.field private static final M12:Ljava/lang/String; = "h:mm aa"

.field static final M24:Ljava/lang/String; = "kk:mm"

.field public static final POWER_OFF_ALARM_ALERT_ACTION:Ljava/lang/String; = "android.intent.action.POWER_OFF_ALARM_ALERT"

.field public static final POWER_OFF_WAKE_UP:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/internal/policy/impl/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 101
    .local v0, format:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 100
    .end local v0           #format:Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 101
    .restart local v0       #format:Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
