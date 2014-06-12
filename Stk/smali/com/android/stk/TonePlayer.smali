.class public Lcom/android/stk/TonePlayer;
.super Ljava/lang/Object;
.source "TonePlayer.java"


# static fields
.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/cat/Tone;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    .line 65
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 81
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 82
    return-void
.end method

.method private getToneId(Lcom/android/internal/telephony/cat/Tone;)I
    .locals 3
    .parameter "tone"

    .prologue
    .line 102
    const/16 v0, 0x18

    .line 104
    .local v0, toneId:I
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/android/stk/TonePlayer;->mToneMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 106
    .local v1, toneIdInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    .end local v1           #toneIdInteger:Ljava/lang/Integer;
    :cond_0
    return v0
.end method


# virtual methods
.method public play(Lcom/android/internal/telephony/cat/Tone;)V
    .locals 2
    .parameter "tone"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/stk/TonePlayer;->getToneId(Lcom/android/internal/telephony/cat/Tone;)I

    move-result v0

    .line 86
    .local v0, toneId:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 89
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 99
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/stk/TonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 95
    :cond_0
    return-void
.end method
