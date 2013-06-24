.class Lcom/mediatek/settings/RecoverChannelSettings;
.super Landroid/os/Handler;
.source "CellBroadcastCheckBox.java"


# static fields
.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final LOG_TAG:Ljava/lang/String; = "RecoverChannelSettings"

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/settings/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 297
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 2
    .parameter "simId"
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 299
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 301
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 302
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 305
    iput p1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    .line 306
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 307
    iput-object p2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 309
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 314
    :cond_0
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 440
    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p0, v2, v3, v2, v4}, Lcom/mediatek/settings/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 445
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V

    .line 450
    :goto_1
    return-void

    .line 443
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/16 v1, 0x65

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/mediatek/settings/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 405
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 406
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 410
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 414
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_2
    const-string v1, "RecoverChannelSettings"

    const-string v2, "handleGetCellBroadcastConfigResponse: success!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 423
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 424
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 425
    const-string v1, "RecoverChannelSettings"

    const-string v2, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 430
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1}, Lcom/mediatek/settings/RecoverChannelSettings;->updateChannelToDatabase(I)Z

    .line 431
    const-string v1, "RecoverChannelSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    return-void
.end method

.method private makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .parameter "channel"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 383
    const/4 v0, 0x2

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 384
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 385
    .local v1, tChannelId:I
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v5

    .line 386
    const/4 v7, 0x1

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 387
    return-object v6
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V
    .locals 4
    .parameter "objectList"
    .parameter "index"

    .prologue
    .line 374
    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p2, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/settings/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private updateChannelToDatabase(I)Z
    .locals 11
    .parameter "index"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 319
    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v4, v9

    const-string v7, "name"

    aput-object v7, v4, v10

    const/4 v7, 0x2

    const-string v8, "number"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "enable"

    aput-object v8, v4, v7

    .line 320
    .local v4, projection:[Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v1

    .line 322
    .local v1, id:I
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 324
    .local v0, enable:Z
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 325
    .local v3, number:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v7, "name"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "number"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v7, "enable"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v7}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, where:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v6, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    return v10
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 391
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/RecoverChannelSettings;->handleGetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/RecoverChannelSettings;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method queryChannelFromDatabase()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 336
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "number"

    aput-object v0, v2, v10

    const-string v0, "enable"

    aput-object v0, v2, v11

    .line 337
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 338
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 339
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 341
    .local v6, channel:Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 342
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 343
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 344
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 345
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v9

    .line 344
    goto :goto_1

    .line 347
    .end local v6           #channel:Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_2
    return v8
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 453
    iput p1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    .line 454
    return-void
.end method

.method updateChannelStatus()V
    .locals 11

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/mediatek/settings/RecoverChannelSettings;->queryChannelFromDatabase()Z

    move-result v9

    if-nez v9, :cond_1

    .line 371
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 359
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 360
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 361
    .local v4, keyId:I
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, channelName:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v0

    .line 363
    .local v0, channelId:I
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v2

    .line 364
    .local v2, channelState:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, title:Ljava/lang/String;
    new-instance v7, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v7, v4, v0, v1, v2}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 366
    .local v7, oldChannel:Lcom/mediatek/settings/CellBroadcastChannel;
    if-eqz v2, :cond_2

    .line 367
    invoke-direct {p0, v7}, Lcom/mediatek/settings/RecoverChannelSettings;->makeChannelConfigArray(Lcom/mediatek/settings/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v6

    .line 368
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v6, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;I)V

    .line 359
    .end local v6           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
