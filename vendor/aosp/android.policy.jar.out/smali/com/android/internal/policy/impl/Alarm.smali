.class public final Lcom/android/internal/policy/impl/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;,
        Lcom/android/internal/policy/impl/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/policy/impl/Alarm$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    .line 252
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 254
    new-instance v1, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 255
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    .line 261
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 262
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 263
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    .line 264
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    .line 265
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 266
    new-instance v1, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 267
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 270
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    .line 272
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    .line 209
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    .line 210
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    .line 211
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    .line 212
    new-instance v1, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 213
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    .line 214
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 215
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    .line 216
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, alertString:Ljava/lang/String;
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    .line 231
    :cond_1
    :goto_1
    return-void

    .end local v0           #alertString:Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 209
    goto :goto_0

    .line 220
    .restart local v0       #alertString:Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 227
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    .line 238
    new-instance v0, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    .line 244
    return-void

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v0, v2

    .line 240
    goto :goto_1

    :cond_2
    move v1, v2

    .line 243
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 288
    instance-of v2, p1, Lcom/android/internal/policy/impl/Alarm;

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 289
    check-cast v0, Lcom/android/internal/policy/impl/Alarm;

    .line 290
    .local v0, other:Lcom/android/internal/policy/impl/Alarm;
    iget v2, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    iget v3, v0, Lcom/android/internal/policy/impl/Alarm;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    const v0, 0x20500d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/internal/policy/impl/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-wide v3, p0, Lcom/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Alarm;->silent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method
