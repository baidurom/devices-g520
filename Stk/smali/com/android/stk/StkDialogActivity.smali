.class public Lcom/android/stk/StkDialogActivity;
.super Landroid/app/Activity;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CANCEL_BUTTON:I = 0x7f070012

.field private static final MIN_LENGTH:I = 0x6

.field private static final MIN_WIDTH:I = 0xaa

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field public static final OK_BUTTON:I = 0x7f070006

.field private static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mbSendResp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/StkDialogActivity;Lcom/android/stk/StkDialogActivity$1;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    .line 85
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    .line 87
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 345
    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/stk/StkDialogActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 159
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 160
    .local v3, window:Landroid/view/Window;
    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    .local v1, mMessageView:Landroid/widget/TextView;
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 164
    .local v2, okButton:Landroid/widget/Button;
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 166
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/stk/StkDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 172
    :cond_1
    const/16 v4, 0xaa

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 178
    const v4, 0x108050a

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_4
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v4}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 317
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFromIntent - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 306
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 307
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 5
    .parameter "resId"
    .parameter "confirmed"

    .prologue
    const/4 v4, 0x2

    .line 282
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/stk/StkAppService;->haveEndSession()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore response, id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse resID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] confirmed["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    .line 290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "op"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    const-string v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string v2, "confirm"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    .line 299
    .local v1, service:Lcom/android/stk/StkAppService;
    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1, v4, v0}, Lcom/android/stk/StkAppService;->sendMessageToServiceHandler(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 326
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 327
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 330
    .local v0, dialogDuration:I
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 334
    :cond_0
    if-nez v0, :cond_1

    .line 335
    const v0, 0x9c40

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xd

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 204
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK Clicked! isCurCmdSetupCall["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v3}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService;->isCurCmdSetupCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "stk call sendBroadcast(STKCALL_REGISTER_SPEECH_INFO)"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.stk.STKCALL_REGISTER_SPEECH_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v4, v2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 212
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 215
    :sswitch_1
    const-string v2, "Cancel Clicked!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 217
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_0
        0x7f070012 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x3

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate - mbSendResp["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 115
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v5, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 156
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/stk/StkDialogActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 123
    .local v4, window:Landroid/view/Window;
    const v5, 0x7f030005

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->setContentView(I)V

    .line 124
    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, mMessageView:Landroid/widget/TextView;
    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 128
    .local v3, okButton:Landroid/widget/Button;
    const v5, 0x7f070012

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-ge v5, v6, :cond_3

    .line 137
    :cond_2
    const/16 v5, 0xaa

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 139
    :cond_3
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_4
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    .line 143
    const v5, 0x108050a

    invoke-virtual {v4, v7, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 151
    :goto_1
    const/high16 v5, 0x800

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/stk/StkDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 146
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v7, v5}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy - before Send CONFIRM false mbSendResp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    if-nez v0, :cond_0

    .line 257
    const-string v0, "onDestroy - Send CONFIRM false"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const/16 v0, 0xd

    invoke-direct {p0, v0, v2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 230
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 226
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 192
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->init()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(Z)V

    .line 248
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 249
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 277
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume - mbSendResp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/stk/StkDialogActivity;->mbSendResp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->indicateDialogVisibility(Z)V

    .line 239
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    .line 240
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 267
    const-string v0, "onSaveInstanceState"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    return-void
.end method
