.class Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
.super Ljava/lang/Object;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProviderSettings"
.end annotation


# instance fields
.field public mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field public mVoicemailNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/settings/VoiceMailSetting;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "voicemailNumber"
    .parameter "forwardingNumber"
    .parameter "timeSeconds"

    .prologue
    const/4 v3, 0x1

    .line 210
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    .line 212
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 213
    :cond_0
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 227
    :cond_1
    return-void

    .line 215
    :cond_2
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 216
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 217
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 218
    .local v0, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    .line 219
    sget-object v2, Lcom/mediatek/settings/VoiceMailSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 220
    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 221
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 222
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 223
    iput-object p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 224
    iput p4, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 220
    goto :goto_1
.end method

.method public constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0
    .parameter
    .parameter "voicemailNumber"
    .parameter "infos"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 232
    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7
    .parameter "infos1"
    .parameter "infos2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    if-ne p1, p2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v3

    .line 255
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v3, v4

    .line 256
    goto :goto_0

    .line 258
    :cond_3
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 259
    goto :goto_0

    .line 261
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 262
    aget-object v1, p1, v0

    .line 263
    .local v1, i1:Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v2, p2, v0

    .line 264
    .local v2, i2:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-ne v5, v6, :cond_5

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_6

    :cond_5
    move v3, v4

    .line 270
    goto :goto_0

    .line 261
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 236
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    instance-of v2, p1, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;

    .line 244
    .local v0, v:Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProviderSettings;->mForwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
