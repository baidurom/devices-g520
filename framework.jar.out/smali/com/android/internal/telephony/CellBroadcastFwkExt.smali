.class public Lcom/android/internal/telephony/CellBroadcastFwkExt;
.super Ljava/lang/Object;
.source "CellBroadcastFwkExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ICellBroadcastFwkExt;


# static fields
.field public static final CB_SET_TYPE_CLOSE_ETWS_CHANNEL:I = 0x2

.field public static final CB_SET_TYPE_NORMAL:I = 0x0

.field public static final CB_SET_TYPE_OPEN_ETWS_CHANNEL:I = 0x1

.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final EVENT_CLOSE_ETWS_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_ETWS_CHANNEL_DONE:I = 0x2

.field private static final EVENT_QUERY_CB_CONFIG:I = 0x1

.field private static final MAX_ETWS_NOTIFICATION:I = 0x4

.field private static final NEXT_ACTION_NO_ACTION:I = 0x64

.field private static final NEXT_ACTION_ONLY_ADD:I = 0x65

.field private static final NEXT_ACTION_ONLY_REMOVE:I = 0x65

.field private static final NEXT_ACTION_REMOVE_THEN_ADD:I = 0x66

.field private static final TAG:Ljava/lang/String; = "CellBroadcastFwkExt"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mConfigInfo:Lcom/android/internal/telephony/CellBroadcastConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mEtwsNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EtwsNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/provider/Telephony$CbSms$CbChannel;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 37
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    .line 39
    iput v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mLock:Ljava/lang/Object;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mConfigInfo:Lcom/android/internal/telephony/CellBroadcastConfigInfo;

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mSuccess:Z

    .line 47
    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellBroadcastFwkExt$1;-><init>(Lcom/android/internal/telephony/CellBroadcastFwkExt;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "CellBroadcastFwkExt"

    const-string v1, "FAIL! phone is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 59
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CellBroadcastFwkExt;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->idToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CellBroadcastFwkExt;Ljava/lang/String;ILcom/android/internal/telephony/EtwsNotification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->handleQueriedConfig(Ljava/lang/String;ILcom/android/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->addEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->removeFirstEtwsNotiThenAdd(Lcom/android/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CellBroadcastFwkExt;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->updateDatabase(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CellBroadcastFwkExt;Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->removeEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V

    return-void
.end method

.method private addEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 2
    .parameter "noti"

    .prologue
    .line 337
    const-string v0, "CellBroadcastFwkExt"

    const-string v1, "call addEtwsNoti"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method private handleQueriedConfig(Ljava/lang/String;ILcom/android/internal/telephony/EtwsNotification;)V
    .locals 12
    .parameter "config"
    .parameter "nextAction"
    .parameter "noti"

    .prologue
    .line 263
    const-string v9, "CellBroadcastFwkExt"

    const-string v10, "handleQueriedConfig"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->parseConfigInfoToList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 266
    .local v5, oldConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v4, newConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v9, 0x1100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const/16 v9, 0x1101

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/16 v9, 0x1102

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const/16 v9, 0x1103

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/16 v9, 0x1104

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v8, 0x0

    .line 274
    .local v8, sortedConfig:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 275
    .local v2, finalConfig:Ljava/lang/String;
    const/4 v6, 0x0

    .line 277
    .local v6, response:Landroid/os/Message;
    const/4 v9, 0x2

    if-ne p2, v9, :cond_3

    .line 278
    const-string v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "to open ETWS channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p3, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 281
    .local v7, size:I
    const/4 v9, 0x4

    if-ge v7, v9, :cond_0

    .line 282
    const-string v9, "CellBroadcastFwkExt"

    const-string/jumbo v10, "list is NOT full"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 285
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 304
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x1

    invoke-interface {v9, v2, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V

    .line 318
    .end local v7           #size:I
    :goto_1
    return-void

    .line 287
    .restart local v7       #size:I
    :cond_0
    const-string v9, "CellBroadcastFwkExt"

    const-string/jumbo v10, "list is full"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/EtwsNotification;

    .line 290
    .local v1, earliestNoti:Lcom/android/internal/telephony/EtwsNotification;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 291
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    .local v0, ch:I
    iget v9, v1, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    if-ne v0, v9, :cond_2

    .line 293
    const-string v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove channel from old config: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 300
    .end local v0           #ch:I
    :cond_1
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 301
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x66

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    goto :goto_0

    .line 290
    .restart local v0       #ch:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 306
    .end local v0           #ch:I
    .end local v1           #earliestNoti:Lcom/android/internal/telephony/EtwsNotification;
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_3
    const/4 v9, 0x3

    if-ne p2, v9, :cond_4

    .line 307
    const-string v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "to close ETWS channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p3, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->minusConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;

    move-result-object v8

    .line 309
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x65

    const/4 v11, 0x0

    invoke-virtual {v9, p2, v10, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 310
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CellBroadcastFwkExt;->parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v2

    .line 311
    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x2

    invoke-interface {v9, v2, v10, v6}, Lcom/android/internal/telephony/CommandsInterface;->setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 313
    :cond_4
    const-string v9, "CellBroadcastFwkExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private idToString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    const-string v0, "EVENT_QUERY_CB_CONFIG"

    goto :goto_0

    .line 151
    :pswitch_1
    const-string v0, "EVENT_OPEN_ETWS_CHANNEL_DONE"

    goto :goto_0

    .line 152
    :pswitch_2
    const-string v0, "EVENT_CLOSE_ETWS_CHANNEL_DONE"

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private mergeConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, oldConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, newConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "CellBroadcastFwkExt"

    const-string v4, "call mergeConfigInfoList"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 160
    .local v2, sortedConfig:Ljava/util/SortedSet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "oldConfigList is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 168
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 169
    .restart local v0       #i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "newConfigList is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    return-object v2
.end method

.method private minusConfigList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/SortedSet;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, oldConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, newConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "CellBroadcastFwkExt"

    const-string v6, "call minusConfigList"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 181
    .local v4, sortedConfig:Ljava/util/SortedSet;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 182
    :cond_0
    const-string v5, "CellBroadcastFwkExt"

    const-string/jumbo v6, "oldConfigList, no need to minus"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    return-object v4

    .line 186
    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 187
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 188
    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 189
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_4

    .line 190
    const-string v5, "CellBroadcastFwkExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v3           #n:I
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .restart local v0       #i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private parseConfigInfoToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x2c

    .line 206
    const-string v10, "CellBroadcastFwkExt"

    const-string v11, "call parseConfigInfoToList"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, left:I
    const/4 v7, 0x0

    .line 209
    .local v7, right:I
    const/4 v9, 0x0

    .line 210
    .local v9, value:I
    const/4 v4, 0x0

    .line 211
    .local v4, meetMinus:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 242
    :cond_0
    return-object v6

    .line 214
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_0

    .line 218
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 220
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, ch:C
    const/16 v10, 0x30

    if-lt v0, v10, :cond_4

    const/16 v10, 0x39

    if-gt v0, v10, :cond_4

    .line 222
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v0, -0x30

    add-int v9, v10, v11

    .line 219
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_4
    const/16 v10, 0x2d

    if-ne v0, v10, :cond_5

    .line 224
    const/4 v4, 0x1

    .line 225
    move v3, v9

    .line 226
    const/4 v9, 0x0

    goto :goto_1

    .line 227
    :cond_5
    if-ne v0, v12, :cond_3

    .line 229
    if-eqz v4, :cond_7

    .line 230
    move v7, v9

    .line 231
    move v2, v3

    .local v2, j:I
    :goto_2
    if-gt v2, v7, :cond_6

    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 234
    :cond_6
    const/4 v4, 0x0

    .line 238
    .end local v2           #j:I
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 236
    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private parseSortedSetToString(Ljava/util/SortedSet;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    const-string v3, "CellBroadcastFwkExt"

    const-string v4, "call parseSortedSet"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :cond_0
    const-string v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "sortedSet is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v3, 0x0

    .line 259
    :goto_0
    return-object v3

    .line 252
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    .local v0, i:I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    .end local v0           #i:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private removeEtwsNoti(Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 7
    .parameter "noti"

    .prologue
    .line 342
    const-string v4, "CellBroadcastFwkExt"

    const-string v5, "call removeEtwsNoti"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 346
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/EtwsNotification;

    .line 347
    .local v1, element:Lcom/android/internal/telephony/EtwsNotification;
    iget v4, v1, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    iget v5, p1, Lcom/android/internal/telephony/EtwsNotification;->messageId:I

    if-ne v4, v5, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    add-int/lit8 v3, v3, -0x1

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v1           #element:Lcom/android/internal/telephony/EtwsNotification;
    :cond_1
    const-string v4, "CellBroadcastFwkExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove noti "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method private removeFirstEtwsNotiThenAdd(Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 2
    .parameter "noti"

    .prologue
    .line 360
    const-string v0, "CellBroadcastFwkExt"

    const-string v1, "call removeFirstEtwsNotiThenAdd"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method private updateDatabase(Z)V
    .locals 19
    .parameter "open"

    .prologue
    .line 368
    const-string v1, "CellBroadcastFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDatabase "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v2, Lcom/android/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI:Landroid/net/Uri;

    .line 370
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mPhoneId:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 371
    sget-object v2, Lcom/android/internal/telephony/CellBroadcastFwkExt;->CHANNEL_URI1:Landroid/net/Uri;

    .line 373
    :cond_0
    const/4 v8, -0x1

    .line 374
    .local v8, channel:I
    const-string v16, ""

    .line 375
    .local v16, name:Ljava/lang/String;
    const/4 v10, -0x1

    .line 376
    .local v10, enable:I
    const/4 v14, -0x1

    .line 377
    .local v14, key:I
    const/4 v1, 0x5

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    .line 378
    .local v7, Channels:[I
    const/4 v1, 0x5

    new-array v12, v1, [Z

    fill-array-data v12, :array_1

    .line 379
    .local v12, handled:[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 381
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    .line 382
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 383
    const-string/jumbo v1, "number"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 384
    const-string v1, "CellBroadcastFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDatabase channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v1, 0x0

    aget v1, v7, v1

    if-lt v8, v1, :cond_1

    const/4 v1, 0x4

    aget v1, v7, v1

    if-gt v8, v1, :cond_1

    .line 386
    const-string v1, "enable"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 387
    const/4 v1, 0x0

    aget v1, v7, v1

    sub-int v1, v8, v1

    const/4 v3, 0x1

    aput-boolean v3, v12, v1

    .line 388
    const/4 v1, 0x1

    if-ne v10, v1, :cond_2

    if-nez p1, :cond_1

    :cond_2
    if-nez v10, :cond_3

    if-eqz p1, :cond_1

    .line 391
    :cond_3
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 392
    new-instance v17, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 393
    .local v17, value:Landroid/content/ContentValues;
    const-string v3, "enable"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 398
    .end local v17           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 399
    .local v11, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CellBroadcastFwkExt"

    const-string v3, "get channels error:"

    invoke-static {v1, v3, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-eqz v9, :cond_4

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 417
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_4
    return-void

    .line 393
    .restart local v17       #value:Landroid/content/ContentValues;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 402
    .end local v17           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_6
    throw v1

    :cond_7
    if-eqz v9, :cond_8

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_8
    array-length v15, v12

    .line 407
    .local v15, len:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    const/4 v1, 0x5

    if-ge v13, v1, :cond_4

    .line 408
    aget-boolean v1, v12, v13

    if-nez v1, :cond_9

    .line 409
    const/4 v1, 0x0

    aget v1, v7, v1

    add-int v8, v13, v1

    .line 410
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v18, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v1, "number"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v3, "enable"

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 407
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 413
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    .line 377
    nop

    :array_0
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
    .end array-data

    .line 378
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public closeEtwsChannel(Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 5
    .parameter "newEtwsNoti"

    .prologue
    .line 142
    const-string v1, "CellBroadcastFwkExt"

    const-string v2, "closeEtwsChannel"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCellBroadcastConfigInfo(Landroid/os/Message;)V

    .line 146
    return-void
.end method

.method public containDuplicatedEtwsNotification(Lcom/android/internal/telephony/EtwsNotification;)Z
    .locals 5
    .parameter "newEtwsNoti"

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string v3, "CellBroadcastFwkExt"

    const-string v4, "call containDuplicatedEtwsNotification"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-nez p1, :cond_1

    .line 323
    const-string v3, "CellBroadcastFwkExt"

    const-string/jumbo v4, "null EtwsNotification"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    :goto_0
    return v2

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mEtwsNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/EtwsNotification;

    .line 328
    .local v0, e:Lcom/android/internal/telephony/EtwsNotification;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/EtwsNotification;->isDuplicatedEtws(Lcom/android/internal/telephony/EtwsNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public openEtwsChannel(Lcom/android/internal/telephony/EtwsNotification;)V
    .locals 5
    .parameter "newEtwsNoti"

    .prologue
    .line 135
    const-string v1, "CellBroadcastFwkExt"

    const-string/jumbo v2, "openEtwsChannel"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, response:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastFwkExt;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCellBroadcastConfigInfo(Landroid/os/Message;)V

    .line 139
    return-void
.end method
