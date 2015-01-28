.class public Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;
.super Ljava/lang/Object;
.source "BluetoothPbapServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$1;,
        Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final PBAP_AUTHORIZE_IND:I = 0x65

.field public static final PBAP_AUTH_CHALL_IND:I = 0x66

.field private static final PBAP_CNF_FAILED:I = 0x1

.field private static final PBAP_CNF_SUCCESS:I = 0x0

.field public static final PBAP_SESSION_DISCONNECTED:I = 0x68

.field public static final PBAP_SESSION_ESTABLISHED:I = 0x67

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapServer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

.field private mLocalName:Ljava/lang/String;

.field private mLocalNumber:Ljava/lang/String;

.field private mNativeData:I

.field private mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

.field private mResultPath:Ljava/lang/String;

.field private mServerState:I

.field private mServiceHandler:Landroid/os/Handler;

.field mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

.field private mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    .line 120
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    .line 131
    iput-object p1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mServiceHandler:Landroid/os/Handler;

    .line 132
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    .line 133
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    .line 134
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    .line 137
    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    .line 138
    sget-boolean v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sUtState:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "extpbap_ut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 140
    const-string v0, "System.loadLibrary()     extpbap_ut"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->classInitNative()V

    .line 146
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->initializeNativeDataNative()V

    .line 147
    return-void

    .line 142
    :cond_0
    const-string v0, "extpbap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 143
    const-string v0, "System.loadLibrary()     extpbap_jni"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->listenIndicationNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method private native authChallengeRspNative(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native authorizeRspNative(Z)Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private composeVCards(IZIIJJ)I
    .locals 17
    .parameter "type"
    .parameter "vcard21"
    .parameter "listOffset"
    .parameter "maxCount"
    .parameter "filter"
    .parameter "contactID"

    .prologue
    .line 453
    const/4 v9, 0x0

    .line 454
    .local v9, handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    const/4 v8, 0x0

    .line 455
    .local v8, composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    const/4 v13, 0x0

    .line 456
    .local v13, ownerCard:Ljava/lang/String;
    const/4 v15, 0x0

    .line 457
    .local v15, selection:Ljava/lang/String;
    const/4 v12, 0x0

    .line 458
    .local v12, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 460
    .local v14, ownerIncl:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] composeVCards("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 462
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;

    .line 464
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 465
    const-string v3, "[ERR] type is unknown"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 466
    const/16 v3, 0xc0

    move-object v2, v8

    .line 572
    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .local v2, composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :goto_0
    return v3

    .line 469
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v8       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :cond_0
    if-ltz p3, :cond_1

    if-gez p4, :cond_2

    .line 470
    :cond_1
    const-string v3, "[ERR] listOffset or maxCount is negtive"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 471
    const/16 v3, 0xc0

    move-object v2, v8

    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    goto :goto_0

    .line 474
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v8       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 476
    :cond_3
    const-string v12, "upper(display_name)"

    .line 481
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 520
    const-string v3, "Unsupported folder type"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 521
    const/16 v3, 0xd1

    move-object v2, v8

    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    goto :goto_0

    .line 478
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v8       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :cond_4
    const-string v12, "date DESC"

    goto :goto_1

    .line 483
    :pswitch_0
    const-string v15, "type=1"

    .line 525
    :goto_2
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getLocalNameAndNum()Z

    .line 527
    :try_start_0
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_a

    const/high16 v4, -0x4000

    :goto_3
    const/4 v5, 0x1

    if-eqz p1, :cond_b

    const/4 v6, 0x5

    move/from16 v0, p1

    if-eq v0, v6, :cond_b

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;-><init>(Landroid/content/Context;IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :try_start_1
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->setVCardAttribFilter(J)V

    .line 534
    if-eqz v14, :cond_5

    .line 536
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 539
    :cond_5
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;

    invoke-direct {v10, v13}, Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .local v10, handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    :try_start_2
    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->addHandler(Lcom/android/bluetooth/pbap/BluetoothVCardComposer$OneEntryHandler;)V

    .line 541
    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3, v12}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 542
    const-string v3, "composer init failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "There\'s no exportable in the database"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_10

    .line 546
    const/16 v3, 0xd0

    .line 569
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->terminate()V

    move-object v9, v10

    .end local v10           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    goto/16 :goto_0

    .line 486
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v8       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :pswitch_2
    const-string v15, "type=2"

    .line 487
    goto :goto_2

    .line 489
    :pswitch_3
    const-string v15, "type=3"

    .line 490
    goto :goto_2

    .line 492
    :pswitch_4
    const-string v15, "indicate_phone_or_sim_contact=-1"

    .line 493
    const-wide/16 v3, 0x0

    cmp-long v3, p7, v3

    if-ltz v3, :cond_6

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 495
    const/16 p3, 0x0

    .line 496
    const/16 p4, 0x1

    goto/16 :goto_2

    .line 497
    :cond_6
    if-nez p3, :cond_7

    .line 498
    const/4 v14, 0x1

    .line 499
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_2

    .line 501
    :cond_7
    add-int/lit8 p3, p3, -0x1

    .line 503
    goto/16 :goto_2

    .line 505
    :pswitch_5
    const-string v15, "indicate_phone_or_sim_contact>-1"

    .line 506
    const-wide/16 v3, 0x0

    cmp-long v3, p7, v3

    if-ltz v3, :cond_8

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _id= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 508
    const/16 p3, 0x0

    .line 509
    const/16 p4, 0x1

    goto/16 :goto_2

    .line 510
    :cond_8
    if-nez p3, :cond_9

    .line 511
    const/4 v14, 0x1

    .line 512
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_2

    .line 514
    :cond_9
    add-int/lit8 p3, p3, -0x1

    .line 516
    goto/16 :goto_2

    .line 527
    :cond_a
    const v4, -0x3fffffff

    goto/16 :goto_3

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 550
    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v10       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    :cond_c
    :try_start_3
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->movePosition(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 551
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->getCount()I

    move-result v3

    sub-int v16, v3, p3

    .line 552
    .local v16, total:I
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_d

    .line 553
    move/from16 p4, v16

    .line 556
    :cond_d
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    move/from16 v0, p4

    if-ge v11, v0, :cond_10

    .line 557
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->createOneEntry()Z

    move-result v3

    if-nez v3, :cond_e

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CreateEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 559
    const/16 v3, 0xd0

    .line 569
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->terminate()V

    move-object v9, v10

    .end local v10           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    goto/16 :goto_0

    .line 556
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v10       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 564
    .end local v11           #i:I
    .end local v16           #total:I
    :cond_f
    const/16 v3, 0xc4

    .line 569
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->terminate()V

    move-object v9, v10

    .end local v10           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    goto/16 :goto_0

    .line 567
    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v10       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    :cond_10
    :try_start_4
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 569
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->terminate()V

    .line 572
    const/16 v3, 0xa0

    move-object v9, v10

    .end local v10           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    goto/16 :goto_0

    .line 569
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v8       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :catchall_0
    move-exception v3

    move-object v2, v8

    .end local v8           #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothVCardComposer;
    :goto_6
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothVCardComposer;->terminate()V

    throw v3

    :catchall_1
    move-exception v3

    goto :goto_6

    .end local v9           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v10       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    :catchall_2
    move-exception v3

    move-object v9, v10

    .end local v10           #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    .restart local v9       #handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    goto :goto_6

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private native connectRspNative(IZ)Z
.end method

.method private native disableNative()V
.end method

.method private native disconnectNative()V
.end method

.method private native enableNative()Z
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 775
    const-string v0, "BluetoothPbapServer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method private getLocalNameAndNum()Z
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 176
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    .line 178
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    .line 183
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalNameAndNum : name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 180
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    .line 181
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNewMissedCallSize()I
    .locals 8

    .prologue
    .line 250
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    .local v1, myUri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/String;

    const-string v0, "type=3 AND new=1"

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 255
    .local v7, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewMissedCallSize : selection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 256
    const/4 v6, 0x0

    .line 258
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_0

    .line 261
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 264
    :cond_0
    if-eqz v6, :cond_1

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMissed calls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 269
    return v7

    .line 264
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getPbSize(I)I
    .locals 8
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, size:I
    const/4 v0, 0x0

    .line 190
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 191
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 192
    .local v1, pbUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 193
    .local v3, sel:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] getPbSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return v2

    .line 199
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 202
    const-string v3, "indicate_phone_or_sim_contact=-1"

    .line 233
    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    if-eqz v6, :cond_2

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 236
    if-eqz p1, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 239
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 243
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v7

    .line 246
    goto :goto_0

    .line 205
    :pswitch_1
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 206
    const-string v3, "type=1"

    .line 207
    goto :goto_1

    .line 209
    :pswitch_2
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 210
    const-string v3, "type=2"

    .line 211
    goto :goto_1

    .line 213
    :pswitch_3
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 214
    const-string v3, "type=3"

    .line 215
    goto :goto_1

    .line 217
    :pswitch_4
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 218
    goto :goto_1

    .line 220
    :pswitch_5
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 221
    const-string v3, "indicate_phone_or_sim_contact>-1"

    .line 222
    goto :goto_1

    .line 243
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native listenIndicationNative(Z)Z
.end method

.method private onAbortInd()V
    .locals 0

    .prologue
    .line 724
    return-void
.end method

.method private onAuthChallInd(Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "name"
    .parameter "isUserIdRequired"
    .parameter "isFullAccess"

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthChallInd: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserIdRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 730
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->sendServiceMsg(ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method private onAuthorizeInd(Ljava/lang/String;)I
    .locals 3
    .parameter "addr"

    .prologue
    .line 326
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 327
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CBK] onAuthorizeInd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const/16 v1, 0x65

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->sendServiceMsg(ILjava/lang/Object;)V

    .line 335
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 332
    :cond_0
    const-string v1, "Failed to get default adapter"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->authorizeRspNative(Z)Z

    goto :goto_0
.end method

.method private onConnectInd(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .parameter "addr"
    .parameter "name"
    .parameter "connectionId"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CBK] onConnectInd("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->connectRspNative(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    invoke-direct {v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    .line 344
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getLocalNameAndNum()Z

    .line 345
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    .line 346
    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->sendServiceMsg(ILjava/lang/Object;)V

    .line 348
    :cond_0
    const/16 v0, 0xa0

    return v0
.end method

.method private onDisconnectInd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    const-string v0, "[CBK] onDisconnectInd"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 355
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    .line 356
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    .line 357
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mSimAdn:Lcom/android/bluetooth/pbap/BluetoothPbapSimAdn;

    .line 358
    const/16 v0, 0x68

    invoke-direct {p0, v0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->sendServiceMsg(ILjava/lang/Object;)V

    .line 359
    return-void
.end method

.method private onPullPhonebookInd(ILjava/lang/String;JZII)I
    .locals 16
    .parameter "conId"
    .parameter "name"
    .parameter "filter"
    .parameter "vcard21"
    .parameter "maxListCount"
    .parameter "listStartOffset"

    .prologue
    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CBK] onPullPhonebookInd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 579
    const/4 v11, 0x0

    .line 582
    .local v11, handler:Lcom/android/bluetooth/pbap/BluetoothVCardEntryHandler;
    const/4 v15, 0x0

    .line 583
    .local v15, selection:Ljava/lang/String;
    const v12, 0xffff

    .line 584
    .local v12, missedCalls:I
    const v13, 0xffff

    .line 586
    .local v13, pbSize:I
    const/16 v14, 0xa0

    .line 588
    .local v14, ret:I
    const-string v2, ".vcf"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    const/4 v2, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 591
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;->getPathType(Ljava/lang/String;Z)I

    move-result v3

    .line 593
    .local v3, type:I
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    .line 594
    const/16 v14, 0xc0

    .line 623
    :goto_0
    const/16 v2, 0xa0

    if-ne v14, v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v12, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->pullPhonebookRspNative(IIILjava/lang/String;)Z

    .line 625
    return v14

    .line 596
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;

    .line 598
    const/4 v2, 0x3

    if-ne v3, v2, :cond_2

    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getNewMissedCallSize()I

    move-result v12

    .line 602
    :cond_2
    if-nez p6, :cond_3

    .line 603
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getPbSize(I)I

    move-result v13

    goto :goto_0

    .line 606
    :cond_3
    const-wide/16 v9, -0x1

    move-object/from16 v2, p0

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p6

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->composeVCards(IZIIJJ)I

    move-result v14

    goto :goto_0

    .line 623
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private onPullVcardEntryInd(ILjava/lang/String;JZ)I
    .locals 17
    .parameter "conId"
    .parameter "name"
    .parameter "filter"
    .parameter "vcard21"

    .prologue
    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CBK] onPullVcardEntryInd("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 631
    const/16 v16, 0xa0

    .line 632
    .local v16, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;->getPathType(Ljava/lang/String;Z)I

    move-result v3

    .line 634
    .local v3, type:I
    const-wide/16 v9, -0x1

    .line 636
    .local v9, contactID:J
    const/4 v14, 0x0

    .line 637
    .local v14, ownerCard:Ljava/lang/String;
    const/4 v15, 0x0

    .line 639
    .local v15, path:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v3, v2, :cond_8

    .line 640
    const-string v2, ".vcf"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 642
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 643
    .local v12, idx:J
    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    if-nez v3, :cond_5

    .line 645
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-lez v2, :cond_2

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    if-nez v2, :cond_1

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getLocalNameAndNum()Z

    .line 648
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mLocalNumber:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    .line 652
    :cond_1
    if-nez v3, :cond_4

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->queryPbID(I)J

    move-result-wide v9

    .line 658
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v2, v9, v4

    if-gez v2, :cond_2

    .line 659
    const/16 v16, 0xc4

    .line 672
    :cond_2
    :goto_1
    const/16 v2, 0xa0

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 673
    long-to-int v5, v12

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p5

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->composeVCards(IZIIJJ)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 714
    .end local v12           #idx:J
    :cond_3
    :goto_2
    const/16 v2, 0xa0

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 715
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mResultPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->pullVcardEntryRspNative(ILjava/lang/String;)Z

    .line 719
    :goto_3
    return v16

    .line 655
    .restart local v12       #idx:J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->querySimPbID(I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v9

    goto :goto_0

    .line 664
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_6

    .line 665
    const/16 v16, 0xc4

    goto :goto_1

    .line 668
    :cond_6
    const-wide/16 v4, 0x1

    sub-long/2addr v12, v4

    goto :goto_1

    .line 704
    .end local v12           #idx:J
    :catch_0
    move-exception v11

    .line 705
    .local v11, e:Ljava/lang/NumberFormatException;
    const/16 v16, 0xc0

    .line 706
    goto :goto_2

    .line 708
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v16, 0xc0

    goto :goto_2

    .line 711
    :cond_8
    const/16 v16, 0xc0

    goto :goto_2

    .line 717
    :cond_9
    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->pullVcardEntryRspNative(ILjava/lang/String;)Z

    goto :goto_3
.end method

.method private onPullVcardListingInd(ILjava/lang/String;ILjava/lang/String;III)I
    .locals 12
    .parameter "conId"
    .parameter "name"
    .parameter "order"
    .parameter "searchVal"
    .parameter "searchAttr"
    .parameter "maxListCount"
    .parameter "listStartOffset"

    .prologue
    .line 379
    const v9, 0xffff

    .line 380
    .local v9, pbSize:I
    const v8, 0xffff

    .line 381
    .local v8, missedCalls:I
    const/4 v10, 0x0

    .line 382
    .local v10, resultPath:Ljava/lang/String;
    const/16 v11, 0xa0

    .line 384
    .local v11, ret:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CBK] onPullVcardListingInd("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    if-nez v1, :cond_1

    .line 389
    const-string v1, "mPath is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 390
    const/16 v11, 0xd0

    .line 446
    :cond_0
    :goto_0
    const/16 v1, 0xa0

    if-ne v11, v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1, v9, v8, v10}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->pullVcardListingRspNative(IIILjava/lang/String;)Z

    .line 448
    return v11

    .line 392
    :cond_1
    const-string v1, ".vcf"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;->getPathType(Ljava/lang/String;Z)I

    move-result v2

    .line 397
    .local v2, type:I
    const/4 v1, -0x1

    if-ne v2, v1, :cond_3

    .line 398
    const-string v1, "unknown folder type type"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 399
    const/16 v11, 0xc0

    goto :goto_0

    .line 402
    :cond_3
    const/4 v1, 0x3

    if-ne v2, v1, :cond_4

    .line 403
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getNewMissedCallSize()I

    move-result v8

    .line 406
    :cond_4
    if-nez p6, :cond_5

    .line 407
    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getPbSize(I)I

    move-result v9

    goto :goto_0

    .line 410
    :cond_5
    const/4 v1, 0x2

    if-eq p3, v1, :cond_6

    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 412
    :cond_6
    const-string v1, "order or search attrib is not supported"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 413
    const/16 v11, 0xd1

    goto :goto_0

    .line 416
    :cond_7
    packed-switch v2, :pswitch_data_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown folder type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 439
    const/16 v11, 0xc0

    goto :goto_0

    .line 419
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->getLocalNameAndNum()Z

    .line 420
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    move v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->list(IIILjava/lang/String;II)I

    move-result v11

    .line 422
    const/16 v1, 0xa0

    if-ne v11, v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getPath()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 431
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    move v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->list(IIILjava/lang/String;II)I

    move-result v11

    .line 433
    const/16 v1, 0xa0

    if-ne v11, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mVcardListing:Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardListing;->getPath()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 446
    .end local v2           #type:I
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSetPathInd(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "op"

    .prologue
    .line 362
    const/16 v0, 0xa0

    .line 364
    .local v0, ret:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CBK] onSetPathInd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mPath:Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;

    invoke-virtual {v1, p2, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapPath;->setPath(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->setPathRspNative(I)Z

    .line 369
    const/16 v0, 0xc0

    .line 373
    :goto_0
    return v0

    .line 371
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->setPathRspNative(I)Z

    goto :goto_0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 770
    const-string v0, "BluetoothPbapServer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private native pullPhonebookRspNative(IIILjava/lang/String;)Z
.end method

.method private native pullVcardEntryRspNative(ILjava/lang/String;)Z
.end method

.method private native pullVcardListingRspNative(IIILjava/lang/String;)Z
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendServiceMsg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 783
    iput p1, v0, Landroid/os/Message;->what:I

    .line 784
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    :goto_0
    return-void

    .line 787
    :cond_0
    const-string v1, "mServiceHandler is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native setPathRspNative(I)Z
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method accept(Z)Z
    .locals 2
    .parameter "isAccept"

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] accept("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->authorizeRspNative(Z)Z

    move-result v0

    return v0
.end method

.method authChallRsp(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cancel"
    .parameter "password"
    .parameter "userID"

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[API] authChallRsp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->authChallengeRspNative(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 293
    const-string v1, "[API] disable"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;->mStopListen:Z

    .line 297
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->wakeupListenerNative()V

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->disableNative()V

    .line 307
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->cleanupNativeDataNative()V

    .line 308
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "Pbap server is not enabled yet"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, ret:Z
    const-string v1, "[API] enable"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->printLog(Ljava/lang/String;)V

    .line 280
    new-instance v1, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$1;)V

    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    .line 281
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->enableNative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;->mStopListen:Z

    .line 283
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    .line 286
    :cond_0
    const-string v1, "enableNative failed"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->errorLog(Ljava/lang/String;)V

    .line 287
    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->mListener:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer$PbapSocketListener;

    goto :goto_0
.end method
