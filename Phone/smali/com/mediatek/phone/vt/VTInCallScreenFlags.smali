.class public final Lcom/mediatek/phone/vt/VTInCallScreenFlags;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;
    }
.end annotation


# static fields
.field private static sVTInCallScreenFlags:Lcom/mediatek/phone/vt/VTInCallScreenFlags;


# instance fields
.field public mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

.field public mVTFrontCameraNow:Z

.field public mVTHasReceiveFirstFrame:Z

.field public mVTHideMeNow:Z

.field public mVTInControlRes:Z

.field public mVTInEndingCall:Z

.field public mVTInLocalBrightnessSetting:Z

.field public mVTInLocalContrastSetting:Z

.field public mVTInLocalZoomSetting:Z

.field public mVTInSnapshot:Z

.field public mVTInSwitchCamera:Z

.field public mVTIsInflate:Z

.field public mVTIsMT:Z

.field public mVTPeerBigger:Z

.field public mVTSettingReady:Z

.field public mVTShouldCloseVTManager:Z

.field public mVTSurfaceChangedH:Z

.field public mVTSurfaceChangedL:Z

.field public mVTVideoConnected:Z

.field public mVTVideoReady:Z

.field public mVTVoiceAnswer:Z

.field public mVTVoiceAnswerPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    invoke-direct {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;-><init>()V

    sput-object v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->sVTInCallScreenFlags:Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;-><init>(Lcom/mediatek/phone/vt/VTInCallScreenFlags;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->sVTInCallScreenFlags:Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 90
    iput-boolean v2, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 91
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 94
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 95
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 96
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 98
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 99
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 100
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 101
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 102
    iput-boolean v2, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 104
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 108
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 109
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 110
    iput-boolean v2, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 111
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswer:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswerPhoneNumber:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;->reset()V

    .line 115
    return-void
.end method

.method public resetPartial()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 122
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 123
    iput-boolean v2, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 124
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 125
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 126
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 127
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    .line 128
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 129
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 130
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 131
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 132
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 133
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 134
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 136
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 140
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 141
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 142
    iput-boolean v2, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswer:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVoiceAnswerPhoneNumber:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTInCallScreenFlagsExtension()Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenFlagsExtension;->reset()V

    .line 147
    return-void
.end method

.method public resetTiming()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 156
    :cond_0
    return-void
.end method
