.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManagerProxy.java"


# instance fields
.field private mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 1
    .parameter "iccPhoneBookInterfaceManager"
    .parameter "simId"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 78
    if-nez p2, :cond_1

    .line 79
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v0, "simphonebook2"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "simphonebook2"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getPhonebookMemStorageExt()[Lcom/android/internal/telephony/gsm/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getPhonebookMemStorageExt()[Lcom/android/internal/telephony/gsm/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUSIMAASById(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMAASById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSIMAASList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMAASList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUSIMAASMaxCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMAASMaxCount()I

    move-result v0

    return v0
.end method

.method public getUSIMAASMaxNameLen()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMAASMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUSIMGroupById(I)Ljava/lang/String;
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSIMGrpMaxCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUSIMGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUSIMGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUsimGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUSIMAAS(Ljava/lang/String;)I
    .locals 1
    .parameter "aasName"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->insertUSIMAAS(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUSIMGroup(Ljava/lang/String;)I
    .locals 1
    .parameter "grpName"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->insertUSIMGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPhbReady()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->isPhbReady()Z

    move-result v0

    return v0
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "grpIndex"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUSIMAASById(II)Z
    .locals 1
    .parameter "index"
    .parameter "pbrIndex"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->removeUSIMAASById(II)Z

    move-result v0

    return v0
.end method

.method public removeUSIMGroupById(I)Z
    .locals 1
    .parameter "nGasId"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->removeUSIMGroupById(I)Z

    move-result v0

    return v0
.end method

.method public setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter "iccPhoneBookInterfaceManager"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 93
    return-void
.end method

.method public updateADNAAS(II)Z
    .locals 1
    .parameter "adnIndex"
    .parameter "aasIndex"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateADNAAS(II)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateUSIMAAS(IILjava/lang/String;)Z
    .locals 1
    .parameter "index"
    .parameter "pbrIndex"
    .parameter "aasName"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUSIMAAS(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUSIMGroup(ILjava/lang/String;)I
    .locals 1
    .parameter "nGasId"
    .parameter "grpName"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUSIMGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;I)I
    .locals 1
    .parameter "efid"
    .parameter "record"
    .parameter "index"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;I)I

    move-result v0

    return v0
.end method

.method public updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I
    .locals 1
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I

    move-result v0

    return v0
.end method

.method public updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 8
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newAnr"
    .parameter "newGrpIds"
    .parameter "newEmails"
    .parameter "index"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldAnr"
    .parameter "oldGrpIds"
    .parameter "oldEmails"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newAnr"
    .parameter "newGrpIds"
    .parameter "newEmails"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->mIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
