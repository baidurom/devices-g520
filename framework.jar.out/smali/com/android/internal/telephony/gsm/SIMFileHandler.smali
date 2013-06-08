.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "card"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getEFPath(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 4
    .parameter "efid"
    .parameter "is7FFF"

    .prologue
    .line 95
    const-string v0, "7F20"

    .line 97
    .local v0, DF_APP:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v0, "7FFF"

    .line 101
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 140
    const-string v1, ""

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_3

    .line 142
    sparse-switch p1, :sswitch_data_1

    .line 155
    const-string v0, "7F105F3A"

    .line 159
    .end local v0           #DF_APP:Ljava/lang/String;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    :goto_0
    :sswitch_0
    return-object v0

    .line 103
    .restart local v0       #DF_APP:Ljava/lang/String;
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :sswitch_2
    const-string v0, "7F20"

    goto :goto_0

    .line 131
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string v2, "7FFF"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "5F3A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "7F10"

    goto :goto_1

    .line 133
    :sswitch_4
    const-string v0, "7FFF7F665F30"

    goto :goto_0

    .line 149
    .restart local v1       #path:Ljava/lang/String;
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    const-string v0, "7F10"

    goto :goto_0

    .line 157
    :cond_3
    const-string v2, "GSM"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    .line 159
    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x2fe2 -> :sswitch_1
        0x4f30 -> :sswitch_3
        0x4f36 -> :sswitch_4
        0x6f11 -> :sswitch_2
        0x6f13 -> :sswitch_2
        0x6f14 -> :sswitch_2
        0x6f15 -> :sswitch_2
        0x6f16 -> :sswitch_2
        0x6f17 -> :sswitch_2
        0x6f18 -> :sswitch_2
        0x6f38 -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f3f -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fb7 -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch

    .line 142
    :sswitch_data_1
    .sparse-switch
        0x6f3b -> :sswitch_5
        0x6f3c -> :sswitch_5
        0x6f40 -> :sswitch_5
        0x6f49 -> :sswitch_5
        0x6f4b -> :sswitch_5
        0x6f4c -> :sswitch_5
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 163
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 167
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method
