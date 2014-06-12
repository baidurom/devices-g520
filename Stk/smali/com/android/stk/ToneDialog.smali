.class public Lcom/android/stk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final MSG_ID_STOP_TONE:I = 0xda


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field private mbSendResp:Z

.field player:Lcom/android/stk/TonePlayer;

.field settings:Lcom/android/internal/telephony/cat/ToneSettings;

.field toneMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 77
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 78
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 80
    iput-object v1, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 82
    new-instance v0, Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/ToneDialog;Lcom/android/stk/ToneDialog$1;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    .line 89
    new-instance v0, Lcom/android/stk/ToneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$1;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    .line 224
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/ToneDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 204
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 205
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 206
    return-void
.end method

.method private sendResponse(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 209
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/stk/StkAppService;->haveEndSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore response, id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/ToneDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mbSendResp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 113
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, title:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/android/stk/ToneDialog;->setContentView(I)V

    .line 122
    const v5, 0x7f070019

    invoke-virtual {p0, v5}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    :cond_0
    const-string v5, "onCreate - null tone text"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 133
    const v5, 0x108035d

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_1
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    if-nez v5, :cond_1

    .line 141
    const-string v5, "onCreate - null settings - finish"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 145
    :cond_1
    new-instance v5, Lcom/android/stk/TonePlayer;

    invoke-direct {v5}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v5, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 146
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    iget-object v6, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v5, v6}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 147
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v5}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v2

    .line 148
    .local v2, timeout:I
    if-nez v2, :cond_2

    .line 149
    const/16 v2, 0x7d0

    .line 152
    :cond_2
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_3

    .line 153
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/stk/ToneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 155
    :cond_3
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v6, 0xda

    int-to-long v7, v2

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_6

    .line 157
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 163
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/android/stk/ToneDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void

    .line 129
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #timeout:I
    :cond_4
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v5, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 159
    .restart local v2       #timeout:I
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - settings.vibrate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mVibrator is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy - before Send End Session mbSendResp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/stk/ToneDialog;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 174
    const-string v0, "onDestroy - Send End Session"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 181
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/ToneDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 193
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
