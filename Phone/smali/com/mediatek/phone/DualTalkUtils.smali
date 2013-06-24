.class public final Lcom/mediatek/phone/DualTalkUtils;
.super Ljava/lang/Object;
.source "DualTalkUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final INSTANCE:Lcom/mediatek/phone/DualTalkUtils; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DualTalkUtils"

.field private static sIsSupportDualTalk:Z


# instance fields
.field private final mActivePhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field protected mPhoneStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/Phone$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/mediatek/phone/DualTalkUtils;

    invoke-direct {v0}, Lcom/mediatek/phone/DualTalkUtils;-><init>()V

    sput-object v0, Lcom/mediatek/phone/DualTalkUtils;->INSTANCE:Lcom/mediatek/phone/DualTalkUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mPhoneStateMap:Ljava/util/HashMap;

    .line 40
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 41
    return-void
.end method

.method private dumpActivePhone()V
    .locals 4

    .prologue
    .line 266
    const-string v2, "DualTalkUtils dumpActivePhone ******* start *******"

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 268
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    const-string v2, "DualTalkUtils dumpActivePhone ******** end  *******"

    invoke-static {v2}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static generateDtmfparam(CZ)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .parameter "start"

    .prologue
    .line 591
    const-string v0, "SetWarningTone="

    .line 592
    .local v0, prefix:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 593
    const-string v0, "StopWarningTone="

    .line 595
    :cond_0
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    :goto_0
    return-object v1

    .line 597
    :cond_1
    const/16 v1, 0x2a

    if-ne p0, v1, :cond_2

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 599
    :cond_2
    const/16 v1, 0x23

    if-ne p0, v1, :cond_3

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 602
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getActivePhoneList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, listPhones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 281
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_0

    .line 282
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/mediatek/phone/DualTalkUtils;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mediatek/phone/DualTalkUtils;->INSTANCE:Lcom/mediatek/phone/DualTalkUtils;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    .line 735
    return-void
.end method

.method public static isSupportDualTalk()Z
    .locals 1

    .prologue
    .line 730
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 34
    const-string v0, "DualTalkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method private switchPhoneByNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 346
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 347
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 348
    .local v2, size:I
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 353
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 355
    .local v1, phone0:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0

    .line 358
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0

    .line 366
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    .end local v1           #phone0:Lcom/android/internal/telephony/Phone;
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 368
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 370
    .restart local v1       #phone0:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto/16 :goto_0
.end method


# virtual methods
.method public canAddCallForDualTalk()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    sget-boolean v4, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v4, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v3

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 565
    .local v1, len:I
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    .local v0, count:I
    if-ne v1, v5, :cond_3

    .line 567
    if-ne v0, v5, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 568
    :cond_3
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    move v3, v2

    .line 572
    goto :goto_0
.end method

.method public canSplitCallFromConference()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 576
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v2

    .line 581
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 585
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 586
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 677
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 678
    move-object v1, v2

    .line 683
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 5

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 139
    .local v1, cdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 141
    .local v2, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 151
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 152
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 154
    :cond_1
    return-object v0

    .line 144
    .restart local v1       #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 146
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 691
    const/4 v1, 0x0

    .line 692
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 693
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 695
    :cond_1
    move-object v1, v2

    .line 700
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v1
.end method

.method public getAllNoIdleCalls()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v1, callList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v5, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 401
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 402
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 406
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v1
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 5

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 166
    .local v1, cdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 167
    .local v2, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 184
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 175
    .restart local v1       #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .restart local v2       #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    .line 181
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #gsmPhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 99
    :cond_0
    return-object v0
.end method

.method public getFirstPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 726
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 197
    iget-object v2, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 198
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 199
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 204
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 201
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondActiveRingCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public getSecondActivieFgCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method

.method public hasActiveCdmaPhone()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 626
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v2

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 631
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 632
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasActiveOrHoldBothCdmaAndGsm()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 658
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v2

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 663
    .local v1, gsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActiveCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 665
    .local v0, cdmaPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasDualHoldCallsOnly()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->isCdmaAndGsmActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getSecondActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hasMultipleRingingCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v2

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isAllowedIncomingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .parameter "ringing"

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, bResult:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 610
    const/4 v4, 0x1

    .line 622
    :goto_0
    return v4

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 615
    .local v3, ringPhone:Lcom/android/internal/telephony/Phone;
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 616
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-ne v2, v3, :cond_1

    .line 617
    const/4 v0, 0x1

    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    move v4, v0

    .line 622
    goto :goto_0
.end method

.method public isCdmaAndGsmActive()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 640
    sget-boolean v3, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v3, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v2

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 648
    iget-object v3, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 649
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 650
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCdmaCallWaiting(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 709
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasMultipleConnections(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    const/4 v1, 0x0

    .line 714
    :goto_0
    return v1

    .line 713
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    goto :goto_0
.end method

.method public isDualTalkAnswerCase()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 423
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v2

    .line 424
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 429
    .local v1, callCount:I
    if-ne v1, v3, :cond_0

    .line 430
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 431
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 438
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    if-lt v1, v6, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public isDualTalkMultipleHoldCase()Z
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v0

    .line 449
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiplePhoneActive()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    sget-boolean v6, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v6, :cond_0

    .line 54
    const-string v5, "don\'t support dualtalk!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 86
    :goto_0
    return v4

    .line 59
    :cond_0
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_1

    .line 61
    const-string v5, "CallManager says in idle state!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v0, 0x0

    .line 69
    .local v0, count:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 70
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v6, v7, :cond_2

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "non IDLE phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 75
    if-le v0, v5, :cond_2

    .line 77
    const-string v4, "More than one phone active!"

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    move v4, v5

    .line 79
    goto :goto_0

    .line 84
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    const-string v5, "Strange! no phone active but we go here!"

    invoke-static {v5}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPhoneCallAllowed(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    .line 538
    const/4 v3, 0x1

    .line 539
    .local v3, result:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, found:Z
    iget-object v4, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 542
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    instance-of v4, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_1

    .line 543
    const-string v4, "match the SipPhone, do nothing."

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_1
    instance-of v4, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 545
    const/4 v0, 0x1

    goto :goto_0

    .line 546
    :cond_2
    instance-of v4, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v4, :cond_0

    .line 547
    const-string v4, "match the CDMAPhone, do nothing."

    invoke-static {v4}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    if-nez v0, :cond_4

    .line 552
    const/4 v3, 0x0

    .line 556
    .end local v0           #found:Z
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return v3
.end method

.method public isPhoneCallAllowed(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .parameter "phone"

    .prologue
    .line 521
    const/4 v0, 0x1

    .line 522
    .local v0, result:Z
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 528
    :cond_0
    return v0
.end method

.method public isRingingWhenOutgoing()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    sget-boolean v0, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 486
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public isSupportHoldAndUnhold()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 498
    sget-boolean v1, Lcom/mediatek/phone/DualTalkUtils;->sIsSupportDualTalk:Z

    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 506
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->getAllNoIdleCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string v1, "Enter switchCalls!"

    invoke-static {v1}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 328
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 333
    .local v0, firstPhone:Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 335
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 337
    const-string v1, "Exit switchCalls!"

    invoke-static {v1}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchPhoneByNeededForRing(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "ringPhone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->updateState()V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    .local v0, num:I
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 309
    if-ne v0, v3, :cond_3

    .line 310
    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 311
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchCalls()V

    goto :goto_0
.end method

.method public updateState()V
    .locals 8

    .prologue
    .line 219
    const-string v6, "updateState: start!"

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 221
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 222
    .local v5, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 224
    const-string v6, "updateState: CM is idle! clear activePhoneList!"

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 263
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Phone;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 234
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_1

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateState: remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " activePhoneList!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 243
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->getActivePhoneList()Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, addFlag:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 246
    .restart local v4       #phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 248
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    .line 250
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 251
    const/4 v0, 0x1

    goto :goto_2

    .line 255
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    iget-object v6, p0, Lcom/mediatek/phone/DualTalkUtils;->mActivePhoneList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->switchPhoneByNeeded()V

    .line 260
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/phone/DualTalkUtils;->dumpActivePhone()V

    .line 261
    const-string v6, "updateState: exit!"

    invoke-static {v6}, Lcom/mediatek/phone/DualTalkUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
