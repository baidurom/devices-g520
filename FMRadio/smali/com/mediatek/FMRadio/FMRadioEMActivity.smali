.class public Lcom/mediatek/FMRadio/FMRadioEMActivity;
.super Landroid/app/Activity;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field private static final MSGID_INIT_OK:I = 0x7

.field private static final MSGID_OK:I = 0x1

.field private static final MSGID_POWERUP:I = 0x8

.field private static final MSGID_TICK_EVENT:I = 0x6

.field private static final MSGID_TUNE_FNISHED:I = 0x9

.field private static final MSGID_UPDATE_CURRENT_STATION:I = 0x3

.field private static final MSGID_UPDATE_RDS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FmRx/EM"

.field private static final TYPE_MSGID:Ljava/lang/String; = "MSGID"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonTune:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mEditFreq:Landroid/widget/EditText;

.field private mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

.field private mIsDestroying:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mRdAntennaL:Landroid/widget/RadioButton;

.field private mRdAntennaS:Landroid/widget/RadioButton;

.field private mRdMono:Landroid/widget/RadioButton;

.field private mRdStereo:Landroid/widget/RadioButton;

.field private mRgAntenna:Landroid/widget/RadioGroup;

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextCapArray:Landroid/widget/TextView;

.field private mTextChipID:Landroid/widget/TextView;

.field private mTextDSPVersion:Landroid/widget/TextView;

.field private mTextECOVersion:Landroid/widget/TextView;

.field private mTextPatchVersion:Landroid/widget/TextView;

.field private mTextRdsBler:Landroid/widget/TextView;

.field private mTextRdsPS:Landroid/widget/TextView;

.field private mTextRdsRT:Landroid/widget/TextView;

.field private mTextRssi:Landroid/widget/TextView;

.field private mTextStereoMono:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 80
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 81
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 83
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 86
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 100
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 102
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 103
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 104
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 105
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 106
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 107
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 108
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    .line 111
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 112
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 137
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 272
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 346
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isSpeakerUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/FMRadioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    return-object v0
.end method

.method private formatCapArray(I)Ljava/lang/String;
    .locals 9
    .parameter "raw"

    .prologue
    const/4 v8, 0x1

    .line 429
    const/16 v4, 0x8

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    .line 431
    .local v2, pF:[F
    const/4 v3, 0x0

    .line 432
    .local v3, sum:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 433
    const/4 v0, 0x6

    .line 434
    .local v0, base:I
    float-to-double v6, v3

    add-int/lit8 v4, v1, 0x6

    shr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_0

    aget v4, v2, v1

    float-to-double v4, v4

    :goto_1
    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 436
    .end local v0           #base:I
    :cond_1
    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 429
    :array_0
    .array-data 0x4
        0xe7t 0xfbt 0x29t 0x3et
        0xe7t 0xfbt 0xa9t 0x3et
        0xe7t 0xfbt 0x29t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x71t 0x3dt 0x2at 0x40t
        0x85t 0xebt 0xa9t 0x40t
        0x9at 0x99t 0x29t 0x41t
        0xcdt 0xcct 0x94t 0x41t
    .end array-data
.end method

.method private getFrequency()I
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getLRText()Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getPS()Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initService(I)V
    .locals 1
    .parameter "iCurrentStation"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initService(I)V

    .line 648
    :cond_0
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isDeviceOpen()Z

    move-result v0

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 2

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 613
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRDSSupported()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isRDSSupported()Z

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isServiceInit()Z

    move-result v0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpeakerUsed()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v0

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 518
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showRDS()V
    .locals 3

    .prologue
    .line 533
    const-string v0, "FmRx/EM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioEMActivity.showRDS PS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method private tuneToStation(I)V
    .locals 2
    .parameter "iStation"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 505
    return-void
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 544
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 545
    .local v0, chipId:I
    if-eqz v1, :cond_0

    .line 546
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 548
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDspVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 594
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 595
    .local v0, dspVersion:I
    if-eqz v1, :cond_0

    .line 596
    const/4 v2, 0x2

    aget v0, v1, v2

    .line 598
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEcoVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 557
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 558
    .local v0, ecoVersion:I
    if-eqz v1, :cond_0

    .line 559
    const/4 v2, 0x1

    aget v0, v1, v2

    .line 561
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHardwareVersion()[I
    .locals 4

    .prologue
    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, hardwareVersion:[I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->getHardwareVersion()[I

    move-result-object v0

    .line 747
    :cond_0
    const-string v1, "FmRx/EM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHardwareversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-object v0
.end method

.method public getPatchVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 570
    .local v1, hardwareVersion:[I
    const/4 v5, 0x0

    .line 571
    .local v5, patchVersion:I
    if-eqz v1, :cond_0

    .line 572
    const/4 v6, 0x3

    .line 573
    .local v6, patchVersionPosition:I
    const/4 v7, 0x3

    aget v5, v1, v7

    .line 575
    .end local v6           #patchVersionPosition:I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, patchStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 577
    .local v3, patch:F
    if-eqz v4, :cond_1

    .line 579
    const/16 v2, 0x64

    .line 580
    .local v2, hundred:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/high16 v8, 0x42c8

    div-float v3, v7, v8

    .line 585
    .end local v2           #hundred:I
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 581
    .restart local v2       #hundred:I
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getStereoMono()Z

    move-result v0

    .line 694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 5
    .parameter "convertData"

    .prologue
    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v3, temp:Ljava/lang/StringBuilder;
    move v1, p1

    .line 759
    .local v1, quotient:I
    const/4 v2, 0x0

    .line 760
    .local v2, remainder:I
    :goto_0
    if-lez v1, :cond_0

    .line 761
    const/16 v0, 0x10

    .line 762
    .local v0, hexadecimal:I
    rem-int/lit8 v2, v1, 0x10

    .line 763
    div-int/lit8 v1, v1, 0x10

    .line 764
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 765
    goto :goto_0

    .line 766
    .end local v0           #hexadecimal:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const-string v2, "FmRx/EM"

    const-string v3, "begin FMRadioEMActivity.onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 206
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    .line 209
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioStation;->initFMDatabase(Landroid/content/Context;)V

    .line 211
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 212
    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 213
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 214
    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 215
    const v2, 0x7f060022

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 216
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 217
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 218
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 220
    const v2, 0x7f060027

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 221
    const v2, 0x7f060016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 222
    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 223
    const v2, 0x7f060019

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 224
    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 225
    const v2, 0x7f060018

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 226
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 227
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 229
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 237
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 238
    const-string v2, "FmRx/EM"

    const-string v3, "Error: Cannot start FM service"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-nez v2, :cond_1

    .line 248
    const-string v2, "FmRx/EM"

    const-string v3, "Error: Cannot bind FM service"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 267
    :goto_1
    return-void

    .line 240
    :cond_0
    const-string v2, "FmRx/EM"

    const-string v3, "Start FM service successfully."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    goto :goto_0

    .line 252
    :cond_1
    const-string v2, "FmRx/EM"

    const-string v3, "Bind FM service successfully."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v1, filterHeadset:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    new-instance v2, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 259
    const-string v2, "FmRx/EM"

    const-string v3, "Register HeadsetConnectionReceiver"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 264
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 265
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 266
    const-string v2, "FmRx/EM"

    const-string v3, "end FMRadioEMActivity.onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 460
    const-string v1, "FmRx/EM"

    const-string v2, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 463
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "FmRx/EM"

    const-string v2, "Unregister headset broadcast receiver."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 469
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 470
    const-string v1, "FmRx/EM"

    const-string v2, "FM is Playing. So stop it."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->powerDownAsync()V

    .line 473
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 477
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 479
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 484
    :cond_3
    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 485
    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 487
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_5

    .line 488
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 489
    .local v0, bRes:Z
    if-nez v0, :cond_4

    .line 490
    const-string v1, "FmRx/EM"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_4
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 495
    .end local v0           #bRes:Z
    :cond_5
    const-string v1, "FmRx/EM"

    const-string v2, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 497
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 454
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 444
    const/16 v0, 0x3e8

    .line 445
    .local v0, oneSecond:I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 525
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 526
    return-void
.end method

.method public readCapArray()I
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getCapArray()I

    move-result v0

    .line 672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getRdsBler()I

    move-result v0

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readRssi()I
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->getRssi()I

    move-result v0

    .line 683
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStereoMono(Z)V
    .locals 1
    .parameter "isMono"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setStereoMono(Z)Z

    .line 708
    return-void
.end method

.method public switchAntenna(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntennaAsync(I)V

    .line 723
    return-void
.end method
