.class public Lcom/mediatek/phone/UssdAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UssdAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UssdAlertActivity"

.field private static final TAG:Ljava/lang/String; = "UssdAlertActivity"

.field public static final USSD_DIALOG_NOTIFICATION:I = 0x2

.field public static final USSD_DIALOG_REQUEST:I = 0x1

.field public static final USSD_MESSAGE_EXTRA:Ljava/lang/String; = "ussd_message"

.field public static final USSD_SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final USSD_TYPE_EXTRA:Ljava/lang/String; = "ussd_type"


# instance fields
.field private isClick:Z

.field private mInputText:Landroid/widget/EditText;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsg:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSlotId:I

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/phone/UssdAlertActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/phone/UssdAlertActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, dialogView:Landroid/view/View;
    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    .line 118
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mMsg:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    iget v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 123
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 126
    :cond_1
    return-object v0
.end method

.method private sendUssd()V
    .locals 3

    .prologue
    .line 154
    const-string v0, "UssdAlertActivity"

    const-string v1, "sendUssd sendUssdResponseGemini button"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "UssdAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUssd USSR string :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public getmAlertOnlyForTest()Lcom/android/internal/app/AlertController;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method public getmInputTextOnlyForTest()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getmTypeOnlyForTest()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 130
    iput-boolean v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->isClick:Z

    .line 131
    packed-switch p2, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v0, v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/mediatek/phone/UssdAlertActivity;->sendUssd()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 57
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ussd_message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mText:Ljava/lang/String;

    .line 60
    const-string v2, "ussd_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    .line 61
    const-string v2, "slot_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mSlotId:I

    .line 65
    invoke-direct {p0}, Lcom/mediatek/phone/UssdAlertActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 66
    iget v2, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v2, v4, :cond_0

    .line 67
    const v2, 0x7f0d01c3

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 68
    const v2, 0x7f0d01bb

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 73
    :goto_0
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->playUSSDTone(Landroid/content/Context;)V

    .line 77
    sput-object p0, Lcom/android/phone/PhoneUtils;->mUssdActivity:Lcom/mediatek/phone/UssdAlertActivity;

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->setupAlert()V

    .line 79
    return-void

    .line 70
    :cond_0
    const v2, 0x7f0d01b7

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "UssdAlertActivity"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->isClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    invoke-static {}, Lcom/android/phone/PhoneUtils;->cancelUssdDialog()V

    .line 237
    const-string v0, "UssdAlertActivity"

    const-string v1, "onDestroy: cancel the request dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 240
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 162
    const-string v0, "UssdAlertActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/phone/UssdAlertActivity;->finish()V

    .line 165
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/UssdAlertActivity;->playUSSDTone(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/UssdAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 82
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 83
    iget v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mType:I

    if-ne v1, v4, :cond_0

    .line 84
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    :goto_0
    iput-boolean v3, p0, Lcom/mediatek/phone/UssdAlertActivity;->isClick:Z

    .line 93
    iget-object v1, p0, Lcom/mediatek/phone/UssdAlertActivity;->mInputText:Landroid/widget/EditText;

    new-instance v2, Lcom/mediatek/phone/UssdAlertActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/UssdAlertActivity$1;-><init>(Lcom/mediatek/phone/UssdAlertActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 88
    .restart local v0       #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public playUSSDTone(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 171
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/UssdAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 172
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 173
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 175
    :cond_0
    const-string v2, "UssdAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", do not play USSD tone..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/phone/UssdAlertActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/phone/UssdAlertActivity$2;-><init>(Lcom/mediatek/phone/UssdAlertActivity;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setMediaListener(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mediaPlayer"

    .prologue
    .line 204
    new-instance v0, Lcom/mediatek/phone/UssdAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/UssdAlertActivity$3;-><init>(Lcom/mediatek/phone/UssdAlertActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 210
    return-void
.end method
