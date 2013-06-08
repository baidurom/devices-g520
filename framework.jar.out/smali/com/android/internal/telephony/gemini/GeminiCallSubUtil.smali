.class public Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone$State;
    .locals 4
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 128
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 129
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone1 state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Phone2 state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Ljava/lang/String;)V

    .line 133
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v0, :cond_3

    .line 136
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 138
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method static a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 144
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 146
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    return-void
.end method

.method static a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 153
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 155
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 156
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 157
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 267
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][Gemini] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method static b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 232
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 236
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    .line 238
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 164
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method static b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 173
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 174
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 175
    return-void
.end method

.method static c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 250
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 180
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 182
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method static c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 191
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 192
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method static d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 261
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 262
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method static d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 198
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 200
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    return-void
.end method

.method static d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 207
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 209
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 210
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 211
    return-void
.end method

.method static e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 217
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method static e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 223
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 225
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 226
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 227
    return-void
.end method
