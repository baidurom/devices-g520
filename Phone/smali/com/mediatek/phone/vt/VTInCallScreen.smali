.class public Lcom/mediatek/phone/vt/VTInCallScreen;
.super Landroid/widget/RelativeLayout;
.source "VTInCallScreen.java"

# interfaces
.implements Lcom/mediatek/phone/vt/IVTInCallScreen;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;,
        Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x92

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT2:I = 0x93

.field private static final HIDDEN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VTInCallScreen"

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final VDBG:Z = true

.field private static final VISIBLE:I = 0xff

.field private static final VT_MEDIA_ERROR_VIDEO_FAIL:I = 0x1

.field private static final VT_MEDIA_OCCUPIED:I = 0x1

.field private static final VT_MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final VT_MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final VT_MEDIA_RECORDER_NO_I_FRAME:I = 0x7fff

.field private static final VT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field private static final VT_PEER_SNAPSHOT_OK:I = 0x7e

.field private static final VT_TAKE_PEER_PHOTO_DISK_MIN_SIZE:I = 0xf4240

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

.field private mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

.field private mHandler:Landroid/os/Handler;

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mVTAudio:Landroid/widget/CompoundButton;

.field private mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

.field private mVTDialpad:Landroid/widget/CompoundButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTHangUpWrapper:Landroid/widget/LinearLayout;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTInCallCanvas:Landroid/view/ViewGroup;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Landroid/view/SurfaceView;

.field private mVTMTAsker:Landroid/app/AlertDialog;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/ImageButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTPowerManager:Landroid/os/PowerManager;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTVoiceRecordingIcon:Landroid/widget/ImageView;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 234
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 190
    const-string v0, "VTInCallScreen constructor..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 234
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 206
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 207
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 234
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 220
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTSettingToVTManager()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->startRecord(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTReceiveFirstFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeVTInCallCanvas()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 805
    const-string v0, "closeVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 811
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 813
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 822
    :cond_3
    return-void
.end method

.method private closeVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1803
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1806
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1808
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1810
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1812
    const-string v0, "VT_VOICE_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VT_VIDEO_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1814
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    .line 1820
    :cond_1
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1822
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 1824
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1828
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1830
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 1832
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1835
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1837
    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1839
    :cond_2
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 2473
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 2474
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f100004

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2475
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2477
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 2478
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2686
    :cond_0
    return-void
.end method

.method private dismissVideoSettingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3186
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3187
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3188
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 3190
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3191
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3192
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 3194
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 3195
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3196
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 3198
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3199
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3200
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 3202
    :cond_3
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 1772
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 2727
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2729
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 2731
    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2733
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2736
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2743
    :goto_0
    return-void

    .line 2739
    :cond_0
    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2741
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 958
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 965
    return-void
.end method

.method private isDialerOpened()Z
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3231
    const-string v0, "VTInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2220
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2221
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2222
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2223
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2224
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2225
    return-void
.end method

.method private okToRecordVoice()Z
    .locals 1

    .prologue
    .line 2468
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    return v0
.end method

.method private onReceiveVTManagerReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3055
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 3056
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 3059
    const-string v0, "Incallscreen, before call setting"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3062
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3064
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() start;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3067
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unlockPeerVideo()V

    .line 3069
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() end;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3073
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    if-eqz v0, :cond_0

    .line 3076
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3077
    const-string v0, "Incallscreen, before enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3079
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableAlwaysAskSettings(I)V

    .line 3081
    const-string v0, "Incallscreen, after enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3084
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$20;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$20;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$19;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$19;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$18;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$18;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 3149
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3151
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->start()V

    .line 3155
    :cond_0
    return-void
.end method

.method private onVTHideMeClick()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1141
    const-string v2, "onVTHideMeClick()..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1144
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 1151
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v2, :cond_1

    .line 1152
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1164
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v3, :cond_4

    :goto_2
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1165
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 1154
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1156
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1157
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1159
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1164
    goto :goto_2
.end method

.method private onVTHideMeClick2()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1172
    const-string v0, "onVTHideMeClick2()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 1177
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1185
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1186
    return-void

    .line 1179
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0

    .line 1182
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onVTInCallVideoSetting()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x7f070016

    const v4, 0x7f0d0020

    .line 1423
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1426
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$4;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$4;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1486
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1487
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d01bb

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$5;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$5;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1496
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_3

    .line 1497
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_0

    .line 1498
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1522
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1523
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1524
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_1

    .line 1501
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1503
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_2

    .line 1504
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1507
    :cond_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1511
    :cond_3
    const v2, 0x7f070017

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$6;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$6;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 1528
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1530
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1531
    .local v7, myBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0d01bb

    new-instance v11, Lcom/mediatek/phone/vt/VTInCallScreen$7;

    invoke-direct {v11, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$7;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 1543
    .local v9, supportEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1549
    .local v3, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    .local v4, entryValues2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1554
    .local v2, entries2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, v3

    .local v6, len:I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 1555
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 1556
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1562
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1565
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1567
    .local v0, currentValue:I
    new-instance v8, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1569
    .local v8, myClickListener:Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 1570
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1573
    const v10, 0x7f0d0023

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1574
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1575
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f070018

    const/4 v4, 0x0

    .line 1605
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1608
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1609
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d01bb

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$8;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$8;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1617
    const v2, 0x7f0d0024

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1619
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$9;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$9;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1644
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1668
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1669
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1670
    return-void

    .line 1651
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1656
    :cond_1
    const v2, 0x7f070019

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$10;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$10;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f07001a

    const/4 v4, 0x1

    .line 1674
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1677
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d01bb

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$11;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$11;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1685
    const v2, 0x7f0d0025

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1687
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$12;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$12;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1712
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1713
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1728
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1729
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1730
    return-void

    .line 1716
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1717
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1722
    :cond_1
    const-string v2, "VTManager.getInstance().getVideoQuality() is not VTManager.VT_VQ_SHARP or VTManager.VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVTReceiveFirstFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1781
    const-string v0, "onVTReceiveFirstFrame() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1783
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_2

    .line 1784
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1796
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 1797
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 1799
    :cond_1
    return-void

    .line 1790
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVTShowDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1381
    const-string v0, "onVTShowDialpad() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    const-string v0, "onShowHideDialpad(): Set mInCallTitle VISIBLE"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1391
    return-void
.end method

.method private onVTSwapVideos()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1395
    const-string v0, "onVTSwapVideos() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1401
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1404
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1406
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1407
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1408
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1410
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1411
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    .line 1413
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1414
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    .line 1416
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1417
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    .line 1419
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1404
    goto :goto_0
.end method

.method private onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1190
    const-string v0, "onVTSwitchCameraClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 1200
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_1
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$3;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$3;->start()V

    .line 1215
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 1216
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1218
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1219
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1220
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1221
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1215
    goto :goto_1
.end method

.method private onVTTakePeerPhotoClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1093
    const-string v0, "onVTTakePeerPhotoClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v0, :cond_1

    .line 1103
    const-string v0, "VTManager is handling snapshot now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1110
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1114
    :cond_2
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1120
    :cond_3
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$2;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$2;->start()V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 2997
    const-string v1, "onVoiceVideoRecordClick"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2999
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3000
    .local v0, title:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3025
    :cond_0
    :goto_0
    return-void

    .line 3003
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3004
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3007
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3008
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->handleStorageFull(Z)V

    goto :goto_0

    .line 3012
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3014
    const-string v1, "want to startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3016
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3018
    const-string v1, "startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3020
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 3022
    :cond_4
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3023
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method private openVTInCallCanvas()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 787
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 791
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 801
    :cond_2
    return-void
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1776
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 1777
    return-void
.end method

.method private setVTSettingToVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3206
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_0

    .line 3207
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    .line 3212
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-eqz v0, :cond_1

    .line 3213
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    .line 3218
    :goto_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3219
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    .line 3226
    :goto_2
    const-string v0, "Incallscreen, after call setting"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3228
    return-void

    .line 3209
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    goto :goto_0

    .line 3215
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    goto :goto_1

    .line 3220
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3221
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto :goto_2

    .line 3223
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto :goto_2
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2616
    const-string v7, "showAudioModePopup()..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2619
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2621
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-nez v7, :cond_0

    .line 2622
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2624
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f100001

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2626
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2627
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2632
    :cond_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 2635
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 2642
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f08013a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2643
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2649
    const v7, 0x7f08013b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2650
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f08013c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2651
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    .line 2657
    .local v5, usingHeadset:Z
    if-nez v5, :cond_2

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2658
    if-nez v5, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2660
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2661
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2663
    const v7, 0x7f08013d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2664
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2666
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 2671
    iput-boolean v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2672
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_2
    move v7, v9

    .line 2657
    goto :goto_0
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 1
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2049
    return-void
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 6
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2245
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2248
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2249
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2253
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2257
    .local v3, msg:Ljava/lang/CharSequence;
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$13;

    invoke-direct {v1, p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen$13;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V

    .line 2274
    .local v1, clickListener1:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$14;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$14;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2297
    .local v2, clickListener2:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$15;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$15;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2310
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d01bb

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d01b7

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 2313
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2314
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2316
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 2915
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2917
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2918
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d01bb

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$16;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$16;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2927
    const v2, 0x7f0d006b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2929
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 2930
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 2935
    :goto_0
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2937
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    :cond_0
    const-string v2, "VT_VOICE_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2941
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2944
    :cond_1
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2945
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2949
    :cond_2
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$17;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$17;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2987
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2991
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 2992
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2993
    return-void

    .line 2932
    .end local v1           #myClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 3166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3167
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 4

    .prologue
    const v3, 0x7f0200ec

    const v1, 0x7f0200eb

    const/4 v2, 0x0

    .line 895
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 905
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 908
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 918
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 919
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 920
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 911
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 912
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 915
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 4

    .prologue
    const v3, 0x7f0200ee

    const v1, 0x7f0200ed

    const/4 v2, 0x0

    .line 926
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 935
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 936
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 939
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 949
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 950
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 951
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 942
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 943
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 4

    .prologue
    const v3, 0x7f0200f7

    const v1, 0x7f0200f6

    const/4 v2, 0x0

    .line 864
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 873
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 874
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 877
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 887
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 888
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 889
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 881
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 884
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    .line 2889
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2891
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 2892
    .local v0, sdMaxSize:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2893
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2894
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->ismFlagRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2896
    const-string v2, "startRecord"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2899
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVoiceRecord(I)V

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 2901
    :cond_1
    if-lez p1, :cond_0

    .line 2902
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVideoRecord(IJI)V

    .line 2904
    invoke-virtual {p0, v6}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    goto :goto_0

    .line 2906
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 2907
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 2909
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoRecord()V
    .locals 1

    .prologue
    .line 2862
    const-string v0, "stopVideoRecorder() ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2864
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVideoRecord()V

    .line 2865
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    .line 2866
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 2761
    const-string v10, "updateAudioButton()..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2770
    const/4 v6, 0x0

    .line 2773
    .local v6, showToggleStateIndication:Z
    const/4 v3, 0x0

    .line 2776
    .local v3, showMoreIndicator:Z
    const/4 v5, 0x0

    .line 2777
    .local v5, showSpeakerOnIcon:Z
    const/4 v4, 0x0

    .line 2778
    .local v4, showSpeakerOffIcon:Z
    const/4 v2, 0x0

    .line 2779
    .local v2, showHandsetIcon:Z
    const/4 v1, 0x0

    .line 2781
    .local v1, showBluetoothIcon:Z
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v10, :cond_2

    .line 2783
    const-string v10, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2786
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2791
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2794
    const/4 v3, 0x1

    .line 2795
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_0

    .line 2796
    const/4 v1, 0x1

    .line 2834
    :goto_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 2836
    .local v0, layers:Landroid/graphics/drawable/LayerDrawable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- \'layers\' drawable: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2844
    const v7, 0x7f080132

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v3, :cond_5

    move v7, v9

    :goto_1
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2847
    const v7, 0x7f080133

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v1, :cond_6

    move v7, v9

    :goto_2
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2850
    const v7, 0x7f080134

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v2, :cond_7

    move v7, v9

    :goto_3
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2853
    const v7, 0x7f080135

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v5, :cond_8

    move v7, v9

    :goto_4
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2856
    const v7, 0x7f080136

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v4, :cond_9

    :goto_5
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2858
    return-void

    .line 2797
    .end local v0           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v7, :cond_1

    .line 2798
    const/4 v5, 0x1

    goto :goto_0

    .line 2800
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2802
    :cond_2
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_4

    .line 2804
    const-string v10, "- updateAudioButton: \'speaker toggle\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2807
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2811
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2814
    const/4 v6, 0x1

    .line 2815
    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 2816
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v10, :cond_3

    move v4, v7

    :goto_6
    goto/16 :goto_0

    :cond_3
    move v4, v8

    goto :goto_6

    .line 2819
    :cond_4
    const-string v7, "- updateAudioButton: disabled..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2824
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2825
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2828
    const/4 v6, 0x1

    .line 2829
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v0       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v7, v8

    .line 2844
    goto :goto_1

    :cond_6
    move v7, v8

    .line 2847
    goto :goto_2

    :cond_7
    move v7, v8

    .line 2850
    goto :goto_3

    :cond_8
    move v7, v8

    .line 2853
    goto :goto_4

    :cond_9
    move v9, v8

    .line 2856
    goto :goto_5
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    .line 969
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 972
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 977
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 980
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVTInCallButtons()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 551
    const-string v5, "updateVTInCallButtons()..."

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 556
    :cond_0
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 557
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 558
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 559
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 568
    :goto_0
    const-string v5, "updateVTInCallButtons() : update mVTMute \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 570
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 572
    const-string v5, "updateVTInCallButtons() : update mVTSwapVideo \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 574
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 576
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    .line 579
    .local v1, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v3, "updateVTInCallButtons() : update mVTDialpad \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 582
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 585
    const-string v3, "updateVTInCallButtons() : update mVTAudio \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 589
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 590
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 591
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_4

    .line 596
    :cond_1
    const-string v3, "updateVTInCallButtons() :phone state is OFFHOOK orcall state is ALERTING or ACTIVE,not dismiss !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 606
    :goto_2
    return-void

    .line 561
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v1           #inCallControlState:Lcom/android/phone/InCallControlState;
    .end local v2           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 562
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 563
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 564
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 574
    goto :goto_1

    .line 604
    .restart local v0       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v1       #inCallControlState:Lcom/android/phone/InCallControlState;
    .restart local v2       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    goto :goto_2
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 3158
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 3159
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 3163
    :goto_0
    return-void

    .line 3161
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private updateVideoBkgDrawable()V
    .locals 3

    .prologue
    const/high16 v1, -0x100

    .line 2439
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_2

    .line 2440
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2442
    const-string v0, "updatescreen(): replace the peer video"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2444
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2461
    :goto_0
    return-void

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2451
    :cond_1
    const-string v0, "mBkgBitmapHandler is null or mBkgBitmapHandler.getBitmap() is null"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2455
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_3

    .line 2456
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 2458
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1735
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1739
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1743
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1745
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1747
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1750
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1751
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1753
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1754
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1755
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 1757
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1758
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1759
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1763
    :cond_5
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 1765
    :cond_6
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1766
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1767
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1769
    :cond_7
    return-void
.end method

.method public getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;
    .locals 2

    .prologue
    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    return-object v0
.end method

.method public handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x1

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handleOnScreenMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2494
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnScreenMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2536
    :goto_0
    return v0

    .line 2502
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2536
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2504
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 2507
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 2510
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    goto :goto_0

    .line 2513
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 2516
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 2519
    :pswitch_6
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSetting()V

    goto :goto_0

    .line 2522
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2528
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2531
    :pswitch_9
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2502
    nop

    :pswitch_data_0
    .packed-switch 0x7f08013a
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public initCommonVTState()V
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->updateBitmapBySetting()V

    .line 2591
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 2592
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 2595
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2597
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2599
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 2601
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2604
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_3

    .line 2605
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2607
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2608
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 2609
    return-void
.end method

.method public initDialingSuccessVTState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2555
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initDialingSuccessVTState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2569
    :cond_0
    :goto_0
    return-void

    .line 2559
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 2560
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 2562
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2564
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 2566
    :cond_3
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-nez v0, :cond_0

    .line 2567
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    goto :goto_0
.end method

.method public initDialingVTState()V
    .locals 2

    .prologue
    .line 2573
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 2574
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 2575
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    const-string v0, "initDialingVTState(): closeDialer"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2580
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2583
    :cond_0
    return-void
.end method

.method public initVTInCallScreen()V
    .locals 8

    .prologue
    const v7, 0x7f080129

    const/16 v6, 0x8

    const/4 v5, 0x1

    const v4, 0x7f08012e

    const/4 v3, 0x0

    .line 613
    const-string v0, "initVTInCallCanvas()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    .line 617
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "VTWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 620
    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/vt/VTCallBanner;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    .line 621
    new-instance v0, Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;-><init>(Lcom/mediatek/phone/vt/VTCallBanner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    .line 623
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    .line 624
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 627
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    .line 628
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 629
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 632
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    .line 633
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 634
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 637
    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    .line 638
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 639
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 642
    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    .line 643
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 644
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 647
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    .line 648
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 649
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 651
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    .line 652
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 655
    invoke-virtual {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    .line 656
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 659
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    .line 660
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 661
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 663
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    .line 664
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 665
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 667
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 668
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 669
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 671
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    .line 672
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 673
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 675
    invoke-virtual {p0, v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    .line 676
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 677
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 679
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    .line 681
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 696
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    .line 701
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 702
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 703
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 704
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 711
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 714
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 715
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 716
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 723
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 728
    :goto_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 729
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 731
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusLeftId(I)V

    .line 732
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    .line 733
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setNextFocusUpId(I)V

    .line 734
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    .line 736
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 737
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 738
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 739
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 741
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 742
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 743
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    const v1, 0x7f08012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 747
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 748
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 750
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 751
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 753
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 754
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 756
    new-instance v0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    .line 758
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    .line 759
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p0, p0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initVTInCallScreen(Landroid/view/ViewGroup;Landroid/view/View$OnTouchListener;Landroid/app/Activity;)Z

    .line 760
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusDownId(I)V

    goto/16 :goto_1

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setNextFocusRightId(I)V

    goto/16 :goto_2
.end method

.method public internalAnswerVTCallPre()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 987
    const-string v0, "internalAnswerVTCallPre()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTManager()V

    .line 993
    const-string v0, "internalAnswerVTCallPre: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 997
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->resetPartial()V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->internalAnswerVTCallPre()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    :goto_0
    return-void

    .line 1005
    :cond_1
    const-string v0, "Incallscreen, before incomingVTCall"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->incomingVTCall(I)V

    .line 1009
    const-string v0, "Incallscreen, after incomingVTCall"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 1013
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 1015
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, v3, v3, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 1020
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 1022
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingState()V

    .line 1023
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1026
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 1028
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_3

    .line 1030
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 1035
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1037
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1038
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    .line 1039
    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1042
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_5

    .line 1043
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1045
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 1047
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1048
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1050
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 1053
    const-string v0, "- set VTManager open ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V

    .line 1061
    const-string v0, "- finish set VTManager open ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1065
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    .line 1067
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1069
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 1073
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1077
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_8

    .line 1080
    const-string v0, "- set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1084
    const-string v0, "- finish set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1087
    :cond_8
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    goto/16 :goto_0
.end method

.method public notifyLocaleChange()V
    .locals 2

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->setNeedClearUserData(Z)V

    .line 3172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 1882
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1884
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1887
    packed-switch v0, :pswitch_data_0

    .line 2041
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 1891
    :pswitch_1
    const-string v2, "onClick: VTHighVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1893
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v2, :cond_0

    .line 1894
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1895
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1896
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1897
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1903
    :pswitch_2
    const-string v2, "onClick: VTLowVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1905
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v2, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1907
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1908
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1909
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1915
    :pswitch_3
    const-string v2, "onClick: VTMute"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1917
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 1922
    :pswitch_4
    const-string v2, "onClick: VTSpeaker..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1924
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleAudioButtonClick()V

    goto :goto_0

    .line 1929
    :pswitch_5
    const-string v2, "onClick: VTDialpad..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1931
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    goto :goto_0

    .line 1936
    :pswitch_6
    const-string v2, "onClick: VTSwapVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1938
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 1943
    :pswitch_7
    const-string v2, "onClick: VTHangUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1945
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 1946
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1947
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 1952
    :pswitch_8
    const-string v2, "onClick: VTLowUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1954
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 1955
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1956
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1957
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1958
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 1959
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1960
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1961
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1962
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1963
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1964
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1965
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1971
    :pswitch_9
    const-string v2, "onClick: VTHighUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1973
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_3

    .line 1974
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 1975
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1976
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1977
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_4

    .line 1978
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 1979
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1980
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1981
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 1982
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 1983
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1984
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1990
    :pswitch_a
    const-string v2, "onClick: VTLowDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1992
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_5

    .line 1993
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 1994
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1995
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1996
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_6

    .line 1997
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 1998
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1999
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2000
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2001
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2002
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2003
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2009
    :pswitch_b
    const-string v2, "onClick: VTHighDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2011
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_7

    .line 2012
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 2013
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2014
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2015
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_8

    .line 2016
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 2017
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2018
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2019
    :cond_8
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2020
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2021
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2022
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2028
    :pswitch_c
    const-string v2, "onClick: VTOverflowMenu..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2030
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_9

    .line 2031
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2033
    :cond_9
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 2034
    .local v1, popup:Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 2035
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1887
    :pswitch_data_0
    .packed-switch 0x7f080123
        :pswitch_1
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->unregisterForVTPhoneStates()V

    .line 226
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
    .locals 10
    .parameter "connection"
    .parameter "slotId"
    .parameter "isForeground"

    .prologue
    const v9, 0x7f0d0056

    const v8, 0x7f0d0018

    const v7, 0x7f0d0054

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2057
    if-nez p1, :cond_1

    .line 2190
    :cond_0
    :goto_0
    return v3

    .line 2060
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 2062
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectVT(), cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isForeground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2065
    if-eqz p3, :cond_12

    .line 2067
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_3

    .line 2070
    :cond_2
    const v5, 0x7f0d01b4

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2071
    goto :goto_0

    .line 2072
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_4

    .line 2073
    const v5, 0x7f0d0053

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2074
    goto :goto_0

    .line 2078
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_5

    .line 2079
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2080
    goto :goto_0

    .line 2081
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_6

    .line 2082
    const v5, 0x7f0d0055

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2083
    goto :goto_0

    .line 2084
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_7

    .line 2085
    invoke-direct {p0, v9, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2086
    goto :goto_0

    .line 2087
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_8

    .line 2088
    invoke-direct {p0, v9, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2089
    goto :goto_0

    .line 2090
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_9

    .line 2091
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2092
    goto/16 :goto_0

    .line 2093
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_a

    .line 2094
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2095
    goto/16 :goto_0

    .line 2098
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2100
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2101
    goto/16 :goto_0

    .line 2102
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_c

    .line 2103
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2104
    goto/16 :goto_0

    .line 2105
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_d

    .line 2106
    const v5, 0x7f0d0057

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2107
    goto/16 :goto_0

    .line 2108
    :cond_d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_e

    .line 2109
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2110
    goto/16 :goto_0

    .line 2111
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_f

    .line 2112
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2113
    goto/16 :goto_0

    .line 2114
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_10

    .line 2115
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2116
    goto/16 :goto_0

    .line 2117
    :cond_10
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_11

    .line 2118
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2119
    goto/16 :goto_0

    .line 2120
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_12

    .line 2121
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2122
    goto/16 :goto_0

    .line 2126
    :cond_12
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-nez v5, :cond_13

    if-eqz p3, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2127
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2129
    .local v2, number:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_14

    .line 2131
    const-string v3, "VT call dropback INCOMPATIBLE_DESTINATION"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2133
    const v3, 0x7f0d0016

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2134
    goto/16 :goto_0

    .line 2135
    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_15

    .line 2137
    const-string v3, "VT call dropback RESOURCE_UNAVAILABLE"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2139
    const v3, 0x7f0d0017

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2140
    goto/16 :goto_0

    .line 2141
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_16

    .line 2143
    const-string v3, "VT call dropback BEARER_NOT_AUTHORIZED"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2145
    const v3, 0x7f0d001a

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2146
    goto/16 :goto_0

    .line 2147
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_17

    .line 2149
    const-string v3, "VT call dropback BEARER_NOT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p0, v8, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2152
    goto/16 :goto_0

    .line 2153
    :cond_17
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_18

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_1a

    .line 2156
    :cond_18
    const-string v5, "VT call dropback NORMAL or ERROR_UNSPECIFIED"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2171
    const-string v5, "gsm.cs.network.type"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2176
    .local v1, nCSNetType:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT call dropback nCSNetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2178
    if-eq v4, v1, :cond_19

    const/4 v5, 0x2

    if-ne v5, v1, :cond_0

    .line 2179
    :cond_19
    const v3, 0x7f0d0019

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2180
    goto/16 :goto_0

    .line 2182
    .end local v1           #nCSNetType:I
    :cond_1a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2184
    const-string v3, "VT call dropback NO_CIRCUIT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p0, v8, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2187
    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2698
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3177
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    const/4 v0, 0x1

    .line 3182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2483
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2541
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, v1, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 5

    .prologue
    .line 3029
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onReceiveVTManagerStartCounter(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3052
    :cond_0
    :goto_0
    return-void

    .line 3032
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 3033
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3034
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3035
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3037
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->triggerTimerStartCount(Lcom/android/internal/telephony/Call;)V

    .line 3039
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3040
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3041
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 3043
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 3045
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 3046
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    if-eqz v1, :cond_0

    .line 3047
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2195
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2197
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2200
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 2207
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 2208
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2210
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2211
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 764
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    :goto_0
    return v2

    .line 769
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 772
    :pswitch_0
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 775
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 776
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 777
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2715
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2717
    :cond_0
    return-void
.end method

.method registerForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2337
    return-void
.end method

.method public resetVTFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1260
    const-string v0, "resetVTFlags()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 1264
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1266
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 1279
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->recycle()V

    .line 1281
    :cond_2
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 2325
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2321
    return-void
.end method

.method public setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-eq v0, p1, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->openVTInCallCanvas()V

    .line 834
    const-string v0, "setVTScreenMode : mVTWakeLock.acquire() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 841
    :cond_0
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 843
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTInCallCanvas()V

    .line 845
    const-string v0, "setVTScreenMode : mVTWakeLock.release() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 851
    :cond_1
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 852
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 2
    .parameter "bIsVisible"

    .prologue
    .line 1858
    if-eqz p1, :cond_1

    .line 1859
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1862
    const-string v0, "VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1864
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1866
    const-string v0, "VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1878
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1873
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1875
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2384
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2436
    :goto_0
    return-void

    .line 2388
    :cond_0
    const v8, 0x7f080142

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2389
    .local v4, switchCameraMenu:Landroid/view/MenuItem;
    const v8, 0x7f080143

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2390
    .local v5, takePeerPhotoMenu:Landroid/view/MenuItem;
    const v8, 0x7f080145

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2391
    .local v2, hideLocalVideoMenu:Landroid/view/MenuItem;
    const v8, 0x7f080144

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2392
    .local v3, swapVideosMenu:Landroid/view/MenuItem;
    const v8, 0x7f080146

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2394
    .local v7, voiceRecordMenu:Landroid/view/MenuItem;
    const v8, 0x7f080147

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2396
    .local v6, videoSettingMenu:Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2397
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/vt/VTManager;->getCameraSensorCount()I

    move-result v1

    .line 2399
    .local v1, cameraSensorCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupMenuItems() : VTManager.getInstance().getCameraSensorCount() == "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2402
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    move v8, v9

    :goto_1
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2403
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_3

    move v0, v9

    .line 2406
    .local v0, bIsSwitchCameraEnable:Z
    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2408
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2409
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2412
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2413
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_5

    .line 2414
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d0044

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2419
    :goto_4
    iget-object v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_5
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2420
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2422
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2423
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2424
    const v8, 0x7f0d0073

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2425
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->okToRecordVoice()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2426
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2427
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2428
    const v8, 0x7f0d0074

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2434
    :cond_1
    :goto_6
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2435
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0           #bIsSwitchCameraEnable:Z
    :cond_2
    move v8, v10

    .line 2402
    goto/16 :goto_1

    :cond_3
    move v0, v10

    .line 2403
    goto/16 :goto_2

    .restart local v0       #bIsSwitchCameraEnable:Z
    :cond_4
    move v8, v10

    .line 2409
    goto :goto_3

    .line 2416
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d0045

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v8, v10

    .line 2419
    goto :goto_5

    .line 2430
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2431
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 3
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2231
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2234
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    .line 2236
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2237
    invoke-direct {p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    .line 2241
    :goto_0
    return-void

    .line 2239
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 2871
    const-string v0, "stopRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2873
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2875
    const-string v0, "stopVoiceRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2877
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVoiceRecord()V

    .line 2885
    :cond_0
    :goto_0
    return-void

    .line 2878
    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2881
    const-string v0, "stopVideoRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2883
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopVideoRecord()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1292
    const-string v0, "surfaceChanged : HighVideo , set mVTSurfaceChangedH = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1294
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1299
    const-string v0, "surfaceChanged : LowVideo , set mVTSurfaceChangedL = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1301
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1304
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_4

    .line 1306
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1309
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1311
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1313
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1319
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    if-eqz v0, :cond_3

    .line 1321
    const-string v0, "- set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1325
    const-string v0, "- finish set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 1329
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1331
    :cond_4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1338
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1348
    const-string v0, "surfaceDestroyed : HighVideo, set mVTSurfaceChangedH = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1351
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1356
    const-string v0, "surfaceDestroyed : LowVideo, set mVTSurfaceChangedL = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1362
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v0, :cond_2

    .line 1365
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1368
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1370
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1377
    :cond_2
    return-void
.end method

.method unregisterForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2363
    return-void
.end method

.method public updateElapsedTime(J)V
    .locals 4
    .parameter "elapsedTime"

    .prologue
    .line 2367
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2368
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    .line 2376
    :goto_0
    return-void

    .line 2374
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    goto :goto_0
.end method

.method public updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 491
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne p1, v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    .line 504
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateCallTime()V

    .line 506
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 507
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTInCallScreenFlags.getInstance().mVTHideMeNow - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTSettingUtils.getInstance().mEnableBackCamera - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 518
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 519
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 520
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 521
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVideoSettingDialogs()V

    .line 522
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 527
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v0, :cond_2

    .line 528
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 529
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 530
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 531
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 534
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTInCallButtons()V

    .line 536
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 541
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 545
    :cond_3
    const-string v0, "updateVTScreen end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    .line 499
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method public updateVideoCallRecordState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1844
    return-void
.end method
