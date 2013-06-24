.class public abstract Lcom/mediatek/calloption/InternationalCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "InternationalCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final COUNTRY_ISO_CHINA:Ljava/lang/String; = "CN"

.field private static final COUNTRY_ISO_TAIWAN:Ljava/lang/String; = "TW"

.field private static final COUNTRY_ISO_USA:Ljava/lang/String; = "US"

.field private static final INTERNATIONAL_DIALING_PREFERENCE_KEY:Ljava/lang/String; = "international_dialing_key"

.field private static final TAG:Ljava/lang/String; = "InternationalCallOptionHandler"


# instance fields
.field protected mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private addValidCountryISOFromCallHistory(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter
    .parameter "onlyFirstOne"
    .parameter "deniedCountryISO"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    .local p3, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getAllCountryISO(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 496
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 497
    .local v0, countryISO:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 499
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 500
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 502
    :cond_0
    invoke-static {p1, p2, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    if-eqz p4, :cond_2

    .line 504
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_1
    :goto_1
    return-void

    .line 508
    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 509
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 516
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "number"
    .parameter "preferCountryISO"
    .parameter "deniedCountryISO"
    .parameter "onlyFirstOne"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v3, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-static {p1, p2, p3}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    if-eqz p5, :cond_0

    .line 489
    :goto_0
    return-object v3

    .line 429
    :cond_0
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, currentCountryISO:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 431
    :cond_1
    invoke-static {p1, p2, v6}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    if-eqz p5, :cond_2

    .line 433
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 443
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 444
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, sim1CountryISO:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 447
    :cond_4
    invoke-static {p1, p2, v7}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    if-eqz p5, :cond_5

    .line 449
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_5
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 453
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, sim2CountryISO:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 461
    :cond_7
    invoke-static {p1, p2, v8}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 462
    if-eqz p5, :cond_8

    .line 463
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 466
    :cond_8
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 467
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7           #sim1CountryISO:Ljava/lang/String;
    .end local v8           #sim2CountryISO:Ljava/lang/String;
    :cond_9
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p5

    move-object v5, p4

    .line 488
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->addValidCountryISOFromCallHistory(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 473
    :cond_a
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, simCountryISO:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 476
    :cond_b
    invoke-static {p1, p2, v9}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 477
    if-eqz p5, :cond_c

    .line 478
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 481
    :cond_c
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 482
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findValidCountryISOFromDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 521
    const-string v0, ""

    .line 522
    .local v0, validCountryISO:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CN"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const-string v0, "CN"

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TW"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    const-string v0, "TW"

    goto :goto_0

    .line 530
    :cond_2
    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "US"

    invoke-static {p1, p2, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isValidNumberForCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const-string v0, "US"

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 548
    const-string v0, "InternationalCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 540
    const-string v0, "dismissDialog()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/InternationalDialogHandler;->onHandledDialogDismiss()V

    .line 544
    :cond_0
    invoke-super {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->dismissDialog()V

    .line 545
    return-void
.end method

.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 60
    .parameter "request"

    .prologue
    .line 79
    const-string v5, "handleRequest()"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "international_dialing_key"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v53

    .line 89
    .local v53, internationalDialingSetting:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internationalDialingSetting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.international"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v52

    .line 94
    .local v52, internationalDialOption:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internationalDialOption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 95
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "+"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "#"

    invoke-virtual {v12, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.ip"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    move/from16 v0, v52

    if-eq v5, v0, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v53

    if-eq v5, v0, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v52

    if-ne v5, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    :cond_1
    const-string v5, "number beging with + or international dialing setting is off or some other conditions, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 365
    :cond_2
    :goto_0
    return-void

    .line 109
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/CallOptionUtils;->getCurrentCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, currentCountryISO:Ljava/lang/String;
    move-object/from16 v22, v12

    .line 111
    .local v22, number2:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallHistory getCallInfo start, number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getCallInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;

    move-result-object v47

    .line 113
    .local v47, callInfo:Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;
    const/4 v5, 0x1

    move/from16 v0, v52

    if-eq v5, v0, :cond_e

    if-eqz v47, :cond_e

    .line 114
    const-string v5, "CallHistory getCallInfo end, get same call history!"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", country iso = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " area code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-object v6, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mAreaCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", confirm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    iget-wide v9, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mConfirm:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, v47

    iget-object v7, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    .line 118
    .local v7, countryISORecorded:Ljava/lang/String;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 119
    .local v19, areaCodeRecorded:Ljava/lang/String;
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mConfirm:J

    move-wide/from16 v48, v0

    .line 122
    .local v48, confirm:J
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    const-string v5, "find same call history, and call history\'s country iso is same as current one, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 131
    :cond_4
    const-string v5, "The current country ISO is different with recorded one"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 134
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 135
    .local v55, internationlPrefixRecorded:Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v59

    .line 136
    .local v59, pattern:Ljava/util/regex/Pattern;
    move-object/from16 v0, v59

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v57

    .line 137
    .local v57, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v57 .. v57}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {v57 .. v57}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 140
    const-string v5, "The dialed number starts with recorded country ISO\'s international prefix"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 141
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 142
    .local v54, internationlPrefixCurrent:Ljava/lang/String;
    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 144
    const-string v5, "Current country ISO\'s international prefix is different with that of recorded one"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 145
    const-string v5, "+"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, formatNumber:Ljava/lang/String;
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v48

    if-nez v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.forbid_dialog"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 148
    const-string v5, "confirm is 1, pop up internation prefix confirm dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 151
    new-instance v56, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-direct {v0, v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v56, locale:Ljava/util/Locale;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v16}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    .local v4, prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v14, p0

    move-object/from16 v17, v4

    move-object/from16 v18, p0

    move-object/from16 v19, p0

    move-object/from16 v20, p0

    invoke-virtual/range {v14 .. v20}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 158
    .end local v19           #areaCodeRecorded:Ljava/lang/String;
    new-instance v5, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v5}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v6, Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-direct {v6, v9, v12, v10, v11}, Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/provider/CallHistoryAsync;->updateConfirmFlag(Lcom/mediatek/phone/provider/CallHistoryAsync$UpdateConfirmFlagArgs;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 164
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v56           #locale:Ljava/util/Locale;
    .restart local v19       #areaCodeRecorded:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v5, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .end local v13           #formatNumber:Ljava/lang/String;
    :cond_6
    const-string v5, "Current country ISO\'s international prefix is same as that of recorded one, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 173
    .end local v54           #internationlPrefixCurrent:Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", countryISORecorded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 175
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v48

    if-nez v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.extra.forbid_dialog"

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_c

    .line 176
    const-string v5, "confirm == 1, show confirm dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 177
    new-instance v56, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-direct {v0, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .restart local v56       #locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 181
    .local v15, countryCode:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, defaultCountryName:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v58

    .line 185
    .local v58, numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    move-object/from16 v0, v22

    invoke-static {v7, v0}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 187
    const-string v5, "The number with recorded country prefix can be dialed directly, pop up country single select dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 189
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v19           #areaCodeRecorded:Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object v14, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v14 .. v26}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 192
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v23, p0

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move-object/from16 v28, p0

    move-object/from16 v29, p0

    invoke-virtual/range {v23 .. v29}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 198
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .restart local v19       #areaCodeRecorded:Ljava/lang/String;
    :cond_8
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 199
    const-string v5, "area code recorded is not empty"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-static {v5, v7, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object v14, v4

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v24, v22

    invoke-direct/range {v14 .. v26}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 207
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v23, p0

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move-object/from16 v28, p0

    move-object/from16 v29, p0

    invoke-virtual/range {v23 .. v29}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 211
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v20           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_9
    const-string v5, "area code recorded is empty"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 214
    if-eqz v58, :cond_a

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 215
    const-string v5, "The number already has area code"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, v22

    move-object/from16 v1, v56

    invoke-static {v0, v7, v1}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 222
    .restart local v20       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "area name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 223
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v20

    move-object/from16 v31, v22

    invoke-direct/range {v23 .. v35}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 226
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v23, p0

    move-object/from16 v26, v4

    move-object/from16 v27, p0

    move-object/from16 v28, p0

    move-object/from16 v29, p0

    invoke-virtual/range {v23 .. v29}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 230
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v20           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_a
    const-string v5, "The number do not include area code"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 233
    .local v28, latestAreaCode:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 234
    const-string v5, "can get latest area code from other recorded number"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-static {v5, v7, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 238
    .restart local v20       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v30, 0x1

    const/16 v32, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v23, v4

    move-object/from16 v24, v15

    move-object/from16 v25, v16

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v29, v20

    move-object/from16 v31, v12

    invoke-direct/range {v23 .. v35}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v30

    const/16 v31, 0x7

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move-object/from16 v34, p0

    move-object/from16 v35, p0

    invoke-virtual/range {v29 .. v35}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 245
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v20           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_b
    const-string v5, "can NOT get latest area code from other recorded number"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 246
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v38, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v29, v4

    move-object/from16 v30, v15

    move-object/from16 v31, v16

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v37, v12

    invoke-direct/range {v29 .. v41}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 249
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v30

    const/16 v31, 0x6

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, p0

    move-object/from16 v34, p0

    move-object/from16 v35, p0

    invoke-virtual/range {v29 .. v35}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 257
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v15           #countryCode:Ljava/lang/String;
    .end local v16           #defaultCountryName:Ljava/lang/String;
    .end local v28           #latestAreaCode:Ljava/lang/String;
    .end local v56           #locale:Ljava/util/Locale;
    .end local v58           #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 258
    .local v51, finalNumber:Ljava/lang/String;
    if-nez v51, :cond_d

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 363
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 261
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v51

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 268
    .end local v7           #countryISORecorded:Ljava/lang/String;
    .end local v19           #areaCodeRecorded:Ljava/lang/String;
    .end local v48           #confirm:J
    .end local v51           #finalNumber:Ljava/lang/String;
    .end local v55           #internationlPrefixRecorded:Ljava/lang/String;
    .end local v57           #matcher:Ljava/util/regex/Matcher;
    .end local v59           #pattern:Ljava/util/regex/Pattern;
    :cond_e
    const-string v5, "CallHistory getCallInfo end, do not find same call history!"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 269
    const-string v32, ""

    .line 270
    .local v32, preferCountryISO:Ljava/lang/String;
    const-string v33, ""

    .line 271
    .local v33, deniedCountryISO:Ljava/lang/String;
    const/4 v5, 0x1

    move/from16 v0, v52

    if-ne v5, v0, :cond_10

    .line 272
    if-eqz v47, :cond_f

    .line 273
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/mediatek/phone/provider/CallHistory$Calls$CallInfo;->mCountryISO:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 275
    :cond_f
    move-object/from16 v33, v8

    .line 278
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const/16 v34, 0x1

    move-object/from16 v29, p0

    move-object/from16 v31, v12

    invoke-direct/range {v29 .. v34}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v46

    .line 280
    .local v46, validCountryISOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v46, :cond_11

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    const-string v37, ""

    .line 283
    .local v37, validCountryISO:Ljava/lang/String;
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, v52

    if-eq v5, v0, :cond_15

    .line 284
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 285
    const-string v5, "can not find valid country iso, show invalid number dialog"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 280
    .end local v37           #validCountryISO:Ljava/lang/String;
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v37, v5

    goto :goto_2

    .line 290
    .restart local v37       #validCountryISO:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 291
    const-string v5, "The number is valid for current country ISO, dial directly"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v5, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 298
    :cond_14
    const-string v5, "The number is NOT valid for current country ISO"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 301
    :cond_15
    const/4 v5, 0x1

    move/from16 v0, v52

    if-ne v5, v0, :cond_17

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 303
    const-string v5, "can not find valid country iso, set default country ISO"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISOFromDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 306
    .local v50, defaultValidCountryISO:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 307
    const-string v5, "default valid country ISO is null"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 318
    .end local v50           #defaultValidCountryISO:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v37

    invoke-static {v12, v0}, Lcom/mediatek/calloption/CallOptionUtils;->getNumberInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;

    move-result-object v58

    .line 320
    .restart local v58       #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "valid country ISO = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 323
    new-instance v56, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .restart local v56       #locale:Ljava/util/Locale;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 326
    .restart local v15       #countryCode:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v36

    .line 327
    .local v36, countryName:Ljava/lang/String;
    move-object/from16 v0, v37

    invoke-static {v0, v12}, Landroid/telephony/PhoneNumberUtils;->isAreaCodeNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 329
    const-string v5, "the number can be dialed directly, just show dialog for country selection"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 331
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCode:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mSubscriber:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v34, v4

    move-object/from16 v35, v15

    move-object/from16 v38, v8

    move-object/from16 v42, v12

    invoke-direct/range {v34 .. v46}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x3

    move-object/from16 v38, p0

    move-object/from16 v41, v4

    move-object/from16 v42, p0

    move-object/from16 v43, p0

    move-object/from16 v44, p0

    invoke-virtual/range {v38 .. v44}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 309
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v15           #countryCode:Ljava/lang/String;
    .end local v36           #countryName:Ljava/lang/String;
    .end local v56           #locale:Ljava/util/Locale;
    .end local v58           #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    .restart local v50       #defaultValidCountryISO:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    move-object/from16 v37, v50

    goto/16 :goto_3

    .line 313
    .end local v50           #defaultValidCountryISO:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-object/from16 v31, v12

    invoke-direct/range {v29 .. v34}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->findValidCountryISO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v46

    goto/16 :goto_3

    .line 338
    .restart local v15       #countryCode:Ljava/lang/String;
    .restart local v36       #countryName:Ljava/lang/String;
    .restart local v56       #locale:Ljava/util/Locale;
    .restart local v58       #numberInfo:Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v5}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/mediatek/phone/provider/CallHistory$Calls;->getLatestAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 339
    .restart local v28       #latestAreaCode:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "latest area code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 340
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 341
    const-string v5, "can get latest area code from records"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v56

    invoke-static {v5, v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->getCityGeoDescription(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 344
    .restart local v20       #geoDescriptionOfCity:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v41, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v34, v4

    move-object/from16 v35, v15

    move-object/from16 v38, v8

    move-object/from16 v39, v28

    move-object/from16 v40, v20

    move-object/from16 v42, v12

    move-object/from16 v44, v12

    invoke-direct/range {v34 .. v46}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x5

    move-object/from16 v38, p0

    move-object/from16 v41, v4

    move-object/from16 v42, p0

    move-object/from16 v43, p0

    move-object/from16 v44, p0

    invoke-virtual/range {v38 .. v44}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 351
    .end local v4           #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    .end local v20           #geoDescriptionOfCity:Ljava/lang/String;
    :cond_19
    const-string v5, "can NOT get latest area code from records"

    invoke-static {v5}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 352
    new-instance v4, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v58

    iget-object v0, v0, Lcom/mediatek/calloption/CallOptionUtils$NumberInfo;->mAreaCodePrefix:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v34, v4

    move-object/from16 v35, v15

    move-object/from16 v38, v8

    move-object/from16 v42, v12

    move-object/from16 v44, v12

    invoke-direct/range {v34 .. v46}, Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    .restart local v4       #prefixInfo:Lcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x4

    move-object/from16 v38, p0

    move-object/from16 v41, v4

    move-object/from16 v42, p0

    move-object/from16 v43, p0

    move-object/from16 v44, p0

    invoke-virtual/range {v38 .. v44}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 404
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 406
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    if-nez v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v2}, Lcom/mediatek/calloption/InternationalDialogHandler;->getSelectResult()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, numberSelect:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 378
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    new-instance v2, Lcom/mediatek/phone/provider/CallHistoryAsync;

    invoke-direct {v2}, Lcom/mediatek/phone/provider/CallHistoryAsync;-><init>()V

    new-instance v3, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;

    iget-object v4, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v4}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/provider/CallHistoryAsync;->deleteCall(Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;)Landroid/os/AsyncTask;

    .line 391
    .end local v0           #number:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v3, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 386
    .restart local v0       #number:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 389
    .end local v0           #number:Ljava/lang/String;
    :cond_3
    const-string v2, "no select from alert dialog, something wrong"

    invoke-static {v2}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    .end local v1           #numberSelect:Ljava/lang/String;
    :cond_4
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 400
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;->log(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method protected abstract showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
