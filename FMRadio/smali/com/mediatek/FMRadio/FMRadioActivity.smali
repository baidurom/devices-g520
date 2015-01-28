.class public Lcom/mediatek/FMRadio/FMRadioActivity;
.super Landroid/app/Activity;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/FMRadio/FMRecordDialogFragment$OnRecordingDialogClickListener;
.implements Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog$CancelSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATION:I = 0x3e8

.field public static final FM_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.FMRadio"

.field private static final MAX_STATION_FREQUENCY_LENGTH:I = 0x5

.field private static final MAX_STATION_NAME_LENGTH:I = 0xf

.field private static final NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field private static final RDS_SETTING:Ljava/lang/String; = "RdsSetting"

.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final SAVE_RECORDINGD:Ljava/lang/String; = "SaveRecording"

.field private static final SEARCH:Ljava/lang/String; = "Search"

.field private static final START_PLAY_TIME:Ljava/lang/String; = "startPlayTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field public static final TAG:Ljava/lang/String; = "FmRx/Activity"

.field private static final TOAST_TIMER_DELAY:J = 0x7d0L


# instance fields
.field filter:Landroid/text/InputFilter;

.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mDialogInput:Landroid/app/AlertDialog;

.field private mDlgStationName:Ljava/lang/String;

.field private mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedDisablePower:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowRecordDlg:Z

.field private mIsPlaying:Z

.field private mIsSDListenerRegistered:Z

.field private mIsSearching:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mMenuItemPower:Landroid/view/MenuItem;

.field private mNeedTuneto:Z

.field private mPlayStartTime:J

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

.field private mRLRecordInfo:Landroid/widget/RelativeLayout;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private mSDDirectory:Ljava/lang/String;

.field private final mSDListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextFM:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRDS:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 124
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 125
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 129
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    .line 130
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    .line 132
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 133
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    .line 135
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 139
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 140
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 141
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 142
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 145
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 146
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    .line 147
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 148
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 151
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 159
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 161
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 162
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 165
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 167
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 169
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 171
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 173
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 175
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 177
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 179
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 182
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 184
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 186
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    .line 188
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 191
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 193
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 194
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 198
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 201
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 209
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;

    .line 213
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    .line 219
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 246
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 340
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 623
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 761
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    .line 1970
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$8;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$8;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->filter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordNotIdle()V

    return-void
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSaveRecordingDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateFavoriteStation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRds()V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    return v0
.end method

.method static synthetic access$3602(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    return-void
.end method

.method private changeRecordingMode(Z)V
    .locals 4
    .parameter "recordingMode"

    .prologue
    .line 1700
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeRecordingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-ne v1, p1, :cond_1

    .line 1702
    const-string v2, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FM already "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "in"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "recording mode!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :goto_1
    return-void

    .line 1702
    :cond_0
    const-string v1, "NOT in"

    goto :goto_0

    .line 1706
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 1709
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-nez v1, :cond_2

    .line 1710
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1711
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1712
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1713
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1714
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 1719
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingModeAsync(Z)V

    .line 1720
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    goto :goto_1
.end method

.method private dismissSaveRecordingDialog()V
    .locals 4

    .prologue
    .line 2082
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2083
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "SaveRecording"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2084
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2085
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2086
    return-void
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 2071
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;

    .line 2073
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2076
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 4
    .parameter "key"
    .parameter "time"

    .prologue
    .line 613
    const-string v2, "FMRecord"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 614
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 615
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    return-void
.end method

.method private enterChannelList()V
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1050
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1051
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1052
    return-void
.end method

.method private exitRecordingMode(Z)V
    .locals 2
    .parameter "isInRecordingMode"

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 508
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 509
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 511
    if-nez p1, :cond_1

    .line 514
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 515
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 519
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    .line 521
    :cond_1
    return-void
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2019
    const-string v1, "FmRx/Activity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 2021
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2022
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 2025
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 2026
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 2028
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 2029
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 2033
    .end local v0           #isSuccess:Z
    :cond_2
    return-void
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 14
    .parameter "time"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 531
    const/16 v3, 0xe10

    .line 532
    .local v3, oneHour:I
    div-int/lit16 v0, p1, 0xe10

    .line 533
    .local v0, hour:I
    const/16 v2, 0x3c

    .line 534
    .local v2, minuteSecond:I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 535
    .local v1, minute:I
    rem-int/lit8 v4, p1, 0x3c

    .line 536
    .local v4, second:I
    const/4 v7, 0x0

    .line 538
    .local v7, timeString:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 539
    const-string v5, "%02d:%02d:%02d"

    .line 540
    .local v5, timeFormatLong:Ljava/lang/String;
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 546
    .end local v5           #timeFormatLong:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 542
    :cond_0
    const-string v6, "%02d:%02d"

    .line 543
    .local v6, timeFormatShort:Ljava/lang/String;
    const-string v8, "%02d:%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private initUIComponent()V
    .locals 4

    .prologue
    .line 2182
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    .line 2185
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioStation;->initFMDatabase(Landroid/content/Context;)V

    .line 2186
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/ExtensionUtils;->getExtension(Landroid/content/Context;)Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 2187
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 2188
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2190
    const v1, 0x7f060032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 2191
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    const-string v2, "FM"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2193
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 2194
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2195
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 2196
    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 2197
    const v1, 0x7f060041

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 2198
    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 2199
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 2200
    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 2201
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 2202
    const v1, 0x7f060035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 2203
    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 2204
    const v1, 0x7f060038

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 2205
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 2206
    const v1, 0x7f060037

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 2207
    const v1, 0x7f06003a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 2213
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 2214
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2215
    .local v0, menu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2217
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isHaveAvailableStorage()Z
    .locals 10

    .prologue
    .line 1839
    new-instance v4, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 1841
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 1842
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 1843
    .local v5, spaceLeft:J
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkRemainingStorage: available space="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isRecordFileExist()Z
    .locals 5

    .prologue
    .line 1824
    const/4 v0, 0x0

    .line 1825
    .local v0, fileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1827
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v4, "FM Recording"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    .local v2, recordingFolderPath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1830
    .local v1, recordingFileToSave:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method private powerUpFM()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1492
    const-string v1, "FmRx/Activity"

    const-string v2, "start powerUpFM"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1494
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1495
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1496
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1497
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1498
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 1500
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 1501
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1502
    .local v0, menu:Landroid/view/Menu;
    const v1, 0x7f06004c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f040047

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1506
    .end local v0           #menu:Landroid/view/Menu;
    :cond_0
    const-string v1, "FmRx/Activity"

    const-string v2, "end powerUpFM"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return-void

    .line 1502
    .restart local v0       #menu:Landroid/view/Menu;
    :cond_1
    const v1, 0x7f040046

    goto :goto_0
.end method

.method private refreshActionMenuItem(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1579
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1582
    :cond_0
    return-void
.end method

.method private refreshActionMenuPower(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1590
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020017

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1593
    :cond_0
    return-void

    .line 1590
    :cond_1
    const v0, 0x7f020016

    goto :goto_0
.end method

.method private refreshImageButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1568
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1569
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1570
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1571
    return-void
.end method

.method private refreshPlaybackIdle(Z)V
    .locals 2
    .parameter "btnPlayBack"

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1626
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1627
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1628
    return-void
.end method

.method private refreshPlaybacking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1637
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1638
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1639
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1640
    return-void
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1596
    const/4 v0, 0x0

    .line 1597
    .local v0, isOverBT:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v2, :cond_0

    .line 1598
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isFmViaBt()Z

    move-result v0

    .line 1600
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_1

    .line 1601
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1602
    .local v1, menu:Landroid/view/Menu;
    const v2, 0x7f06004d

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1603
    const v2, 0x7f06004a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1605
    const v2, 0x7f06004b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1607
    const v2, 0x7f06004c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1609
    .end local v1           #menu:Landroid/view/Menu;
    :cond_1
    return-void

    .line 1602
    .restart local v1       #menu:Landroid/view/Menu;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshRecordIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1619
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1620
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1621
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1622
    return-void
.end method

.method private refreshRecordNotIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1613
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1614
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1615
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1616
    return-void
.end method

.method private refreshRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1632
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1633
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1634
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 12
    .parameter "stateOverride"

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1753
    const/4 v2, -0x1

    .line 1755
    .local v2, recorderState:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecorderState()I

    move-result v2

    .line 1758
    :goto_0
    const-string v6, "FmRx/Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshRecordingStatus: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    packed-switch v2, :pswitch_data_0

    .line 1810
    :pswitch_0
    const-string v4, "FmRx/Activity"

    const-string v5, "invalid record status"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :goto_1
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1814
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    :cond_0
    move v2, p1

    .line 1755
    goto :goto_0

    .line 1761
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordTime()J

    move-result-wide v0

    .line 1762
    .local v0, recordTime:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_4

    .line 1763
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1764
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1767
    :cond_1
    const/4 v6, 0x6

    iget v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    if-ne v6, v7, :cond_2

    .line 1768
    const-string v6, "FmRx/Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need show recorder dialog.mPrevRecorderState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    if-eqz v6, :cond_3

    .line 1770
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSaveRecordingDialog(Ljava/lang/String;)V

    .line 1780
    :cond_2
    :goto_2
    cmp-long v6, v0, v10

    if-lez v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPlaybackIdle(Z)V

    .line 1781
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1772
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    goto :goto_2

    .line 1777
    :cond_4
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    move v4, v5

    .line 1780
    goto :goto_3

    .line 1785
    .end local v0           #recordTime:J
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1787
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1788
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecording()V

    .line 1789
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1793
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    .line 1794
    .local v3, recordingName:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 1795
    const-string v3, ""

    .line 1797
    :cond_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1798
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1800
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPlaybacking()V

    .line 1801
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1805
    .end local v3           #recordingName:Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordIdle()V

    .line 1806
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1759
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshStationUI(I)V
    .locals 3
    .parameter "station"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1073
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshTimeText()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 2231
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTimeText:mRecordState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v3, :cond_2

    .line 2233
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTimeText:mIsInRecordingMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 2235
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecordingAsync()V

    .line 2264
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 2237
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlaybackAsync()V

    goto :goto_0

    .line 2242
    :cond_2
    const/16 v0, 0x3e8

    .line 2243
    .local v0, oneSecond:I
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    packed-switch v3, :pswitch_data_0

    .line 2263
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2245
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    .line 2246
    .local v2, recordTime:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2247
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isHaveAvailableStorage()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2250
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecordingAsync()V

    goto :goto_1

    .line 2255
    .end local v2           #recordTime:I
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v1, v3

    .line 2256
    .local v1, playTime:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2257
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2243
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2221
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2222
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2223
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2224
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2225
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2226
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2227
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2228
    return-void
.end method

.method private restoreConfiguration()V
    .locals 5

    .prologue
    .line 1079
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    const-string v2, "FmRx/Activity"

    const-string v3, "Configration changes,activity restart,need to reset UI!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1083
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 1086
    if-nez v0, :cond_1

    .line 1101
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1089
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "mPrevRecorderState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1090
    const-string v2, "mRecordState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 1091
    const-string v2, "mIsFreshRecordingStatus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 1092
    const-string v2, "mIsNeedShowNoAntennaDlg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1095
    const-string v2, "isInRecordingMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1096
    .local v1, isInRecordingMode:Z
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 1097
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRecordingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mPrevRecorderState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v2, "mIsPlaying"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    goto :goto_0
.end method

.method private seekStation(IZ)V
    .locals 2
    .parameter "station"
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 1556
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1557
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1558
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1559
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1560
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1561
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStationAsync(FZ)V

    .line 1563
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 6
    .parameter "isSpeaker"

    .prologue
    .line 1510
    if-eqz p1, :cond_1

    .line 1511
    const-string v3, "FmRx/Activity"

    const-string v4, "UseSpeaker"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1514
    .local v0, endTime:J
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][FMRadio] switch speaker end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :goto_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 1522
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1523
    .local v2, menu:Landroid/view/Menu;
    const v3, 0x7f06004c

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f040047

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1526
    .end local v2           #menu:Landroid/view/Menu;
    :cond_0
    return-void

    .line 1516
    .end local v0           #endTime:J
    :cond_1
    const-string v3, "FmRx/Activity"

    const-string v4, "UseEarphone"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1519
    .restart local v0       #endTime:J
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][FMRadio] switch earphone end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1523
    .restart local v2       #menu:Landroid/view/Menu;
    :cond_2
    const v3, 0x7f040046

    goto :goto_1
.end method

.method private showRDS(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1690
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioActivity.showRDS: RDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1684
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioActivity.showToast: toast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1476
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1477
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.startAnimation end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1485
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1486
    return-void
.end method

.method private switchRecordLayout(Z)V
    .locals 6
    .parameter "recordingMode"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1728
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1729
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1732
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1733
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1734
    if-eqz p1, :cond_0

    const v3, 0x7f040037

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1737
    const v3, 0x7f06003b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1738
    .local v2, recBar:Landroid/widget/LinearLayout;
    const v3, 0x7f060036

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1740
    .local v1, bottomBar:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1744
    return-void

    .line 1734
    .end local v1           #bottomBar:Landroid/widget/LinearLayout;
    .end local v2           #recBar:Landroid/widget/LinearLayout;
    :cond_0
    const/high16 v3, 0x7f04

    goto :goto_0

    .restart local v1       #bottomBar:Landroid/widget/LinearLayout;
    .restart local v2       #recBar:Landroid/widget/LinearLayout;
    :cond_1
    move v3, v5

    .line 1740
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1741
    goto :goto_2

    :cond_3
    move v4, v5

    .line 1742
    goto :goto_3
.end method

.method private tuneToStation(I)V
    .locals 2
    .parameter "station"

    .prologue
    const/4 v0, 0x0

    .line 1535
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1536
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1537
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1538
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1539
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 1540
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 1541
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1543
    :cond_0
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 2169
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I

    move-result v0

    .line 2170
    .local v0, freq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 2172
    const-string v1, "FmRx/Activity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 2175
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 2176
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V

    .line 2179
    :cond_0
    return-void
.end method

.method private updateFavoriteStation()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, showString:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, stationName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v5, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 563
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040027

    const v5, 0x7f040028

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 597
    .end local v1           #stationName:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 602
    return-void

    .line 571
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 573
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040023

    const v5, 0x7f040024

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 579
    .restart local v1       #stationName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v4, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 589
    :goto_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040029

    const v5, 0x7f04002a

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 585
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private updateRds()V
    .locals 4

    .prologue
    .line 2152
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 2153
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2154
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "key_ps_info"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getPS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v2, "key_rt_info"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getLRText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    const v3, 0x100011

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2158
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2159
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2161
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateRecorderError(I)V
    .locals 3
    .parameter "errorType"

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, showString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 490
    :pswitch_0
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid recorder error"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordIdle()V

    .line 497
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 498
    return-void

    .line 474
    :pswitch_1
    const v1, 0x7f04003a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    goto :goto_0

    .line 478
    :pswitch_2
    const v1, 0x7f04003b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    goto :goto_0

    .line 482
    :pswitch_3
    const v1, 0x7f04003c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    goto :goto_0

    .line 486
    :pswitch_4
    const v1, 0x7f04003d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateRecordingState(I)V
    .locals 3
    .parameter "recorderState"

    .prologue
    const/16 v2, 0x65

    .line 437
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 438
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 458
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    :goto_0
    return-void

    .line 442
    :pswitch_0
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 443
    const-string v0, "FmRx/Activity"

    const-string v1, "-----updateRecordingState:startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 448
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 452
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 2106
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.cancelSearch"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 2108
    return-void
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 2096
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, unmountSDCard:Ljava/lang/String;
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount sd card file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 2134
    const-string v0, "FmRx/Activity"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    .line 2136
    return-void
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 2116
    const-string v0, "FmRx/Activity"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    .line 2128
    :goto_0
    return-void

    .line 2120
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 1432
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 1433
    if-eq v4, p1, :cond_0

    .line 1434
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :goto_0
    return-void

    .line 1437
    :cond_0
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1440
    .local v0, iStation:I
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 1443
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    .line 1444
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityForReult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_1

    .line 1446
    const-string v1, "FmRx/Activity"

    const-string v2, "activity.onActivityResult mService is null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    goto :goto_0

    .line 1450
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    goto :goto_0

    .line 1454
    .end local v0           #iStation:I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1455
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1457
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    :goto_1
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The activity for requestcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1461
    :cond_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1463
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1646
    const-string v1, "FmRx/Activity"

    const-string v2, "begin FMRadioActivity.onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v1, :cond_1

    .line 1649
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 1650
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1651
    const-string v1, "FmRx/Activity"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    return-void

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v0

    .line 1656
    .local v0, isPlaying:Z
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1657
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1658
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1659
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    goto :goto_0

    .line 1664
    .end local v0           #isPlaying:Z
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUping()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1665
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1666
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1667
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1668
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1669
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    goto :goto_0

    .line 1673
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1675
    const-string v1, "FmRx/Activity"

    const-string v2, "end FMRadioActivity.onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 986
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 987
    const-string v2, "FmRx/Activity"

    const-string v3, "FMRadioActivity.onCreate start"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 991
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 992
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 994
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 995
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_DELETE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v2, "com.mediatek.FMRadio.FMRadioFavorite.ACTION_HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_STOPED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 1007
    const-string v2, "FmRx/Activity"

    const-string v3, "Register broadcast receiver."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1012
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->initUIComponent()V

    .line 1014
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerButtonClickListener()V

    .line 1018
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 1019
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    .line 1023
    .local v1, isFavoriteStation:Z
    if-eqz v1, :cond_0

    .line 1024
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1026
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const/high16 v2, 0x7f02

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 1036
    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 1037
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1042
    const-string v2, "FmRx/Activity"

    const-string v3, "FMRadioActivity.onCreate end"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void

    .line 1029
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1272
    const-string v1, "FmRx/Activity"

    const-string v2, "start FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1274
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1275
    const v1, 0x7f060047

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 1276
    const v1, 0x7f060049

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 1277
    const v1, 0x7f060048

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    .line 1279
    const-string v1, "FmRx/Activity"

    const-string v2, "end FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1233
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1244
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 1247
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 1248
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1250
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1252
    :cond_1
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1256
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1257
    const-string v0, "FmRx/Activity"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1259
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 1262
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 2011
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popmenu dismiss listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2013
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1873
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMenuItemClick:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1964
    const-string v5, "FmRx/Activity"

    const-string v7, "invalid menu item"

    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_0
    return v6

    .line 1878
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1879
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1880
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1881
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1882
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSearchDialog()V

    .line 1883
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioStation;->cleanSearchedStations(Landroid/content/Context;)V

    .line 1885
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    .line 1887
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->startScanAsync()V

    goto :goto_0

    .line 1892
    :pswitch_1
    const v7, 0x7f030005

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1893
    .local v4, v:Landroid/view/View;
    const v7, 0x7f06002a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1894
    .local v1, editTextStationName:Landroid/widget/EditText;
    const v7, 0x7f06002c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1895
    .local v0, editTextFrequency:Landroid/widget/EditText;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/text/InputFilter;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->filter:Landroid/text/InputFilter;

    aput-object v8, v7, v6

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v5

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1896
    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1899
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f04000b

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f040010

    new-instance v8, Lcom/mediatek/FMRadio/FMRadioActivity$7;

    invoke-direct {v8, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$7;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f040011

    new-instance v8, Lcom/mediatek/FMRadio/FMRadioActivity$6;

    invoke-direct {v8, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$6;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v5, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;

    .line 1947
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1952
    .end local v0           #editTextFrequency:Landroid/widget/EditText;
    .end local v1           #editTextStationName:Landroid/widget/EditText;
    .end local v4           #v:Landroid/view/View;
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1953
    .local v2, startTime:J
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Performance test][FMRadio] switch speaker start ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Performance test][FMRadio] switch earphone start ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSpeakerPhoneOn(Z)V

    goto/16 :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    .line 1959
    .end local v2           #startTime:J
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 1960
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    goto/16 :goto_0

    .line 1874
    :pswitch_data_0
    .packed-switch 0x7f06004a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const v7, 0x7f06004c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1339
    const-string v3, "FmRx/Activity"

    const-string v4, "start FMRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1404
    const-string v3, "FmRx/Activity"

    const-string v4, "Error: Invalid options menu item."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :goto_0
    const-string v3, "FmRx/Activity"

    const-string v4, "end FMRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 1342
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onBackPressed()V

    goto :goto_0

    .line 1347
    :sswitch_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1348
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1349
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1350
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1352
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V

    goto :goto_0

    .line 1356
    :sswitch_2
    const-string v3, "FmRx/Activity"

    const-string v4, "click fm_power menu"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v3, :cond_0

    .line 1358
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1359
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1360
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1361
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1362
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    goto :goto_0

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    goto :goto_0

    .line 1369
    :sswitch_3
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1371
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f060049

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1372
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1373
    .local v2, menu:Landroid/view/Menu;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1374
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1375
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1377
    const/4 v0, 0x0

    .line 1379
    .local v0, isFmViaBt:Z
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isFmViaBt()Z

    move-result v0

    .line 1385
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 1386
    .local v1, isPlaying:Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1387
    const v3, 0x7f06004d

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1388
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1389
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f040047

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1393
    :cond_1
    if-eqz v1, :cond_2

    .line 1394
    const v3, 0x7f06004a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1396
    const v3, 0x7f06004b

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1400
    :cond_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1389
    :cond_3
    const v3, 0x7f040046

    goto :goto_1

    .line 1340
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060047 -> :sswitch_1
        0x7f060048 -> :sswitch_2
        0x7f060049 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1208
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 1210
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1212
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1291
    const-string v5, "FmRx/Activity"

    const-string v8, "start FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1297
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1298
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_2
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1299
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v5, :cond_5

    .line 1300
    const-string v5, "FmRx/Activity"

    const-string v8, "mService is null"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_4

    .line 1328
    :cond_0
    :goto_3
    return v6

    :cond_1
    move v5, v7

    .line 1296
    goto :goto_0

    :cond_2
    move v5, v7

    .line 1297
    goto :goto_1

    :cond_3
    move v5, v7

    .line 1298
    goto :goto_2

    :cond_4
    move v6, v7

    .line 1301
    goto :goto_3

    .line 1303
    :cond_5
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isShortAntennaSupport()Z

    move-result v4

    .line 1305
    .local v4, isShortAntennaSupport:Z
    if-nez v4, :cond_6

    .line 1306
    const-string v5, "FmRx/Activity"

    const-string v7, "onPrepareOptionsMenu: no antenna support"

    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    goto :goto_3

    .line 1311
    :cond_6
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 1312
    .local v1, isPlaying:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isMakePowerDown()Z

    move-result v0

    .line 1313
    .local v0, isMakePowerdown:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isSeeking()Z

    move-result v3

    .line 1314
    .local v3, isSeeking:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v2

    .line 1316
    .local v2, isScan:Z
    if-nez v3, :cond_7

    if-eqz v2, :cond_a

    :cond_7
    move v5, v7

    :goto_4
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1317
    if-nez v2, :cond_8

    if-eqz v3, :cond_b

    :cond_8
    move v5, v7

    :goto_5
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1322
    if-eqz v3, :cond_9

    .line 1323
    const-string v5, "FmRx/Activity"

    const-string v8, "onPrepareOptionsMenu: it is seeking"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1327
    :cond_9
    const-string v5, "FmRx/Activity"

    const-string v8, "end FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v5, :cond_0

    move v6, v7

    goto :goto_3

    :cond_a
    move v5, v1

    .line 1316
    goto :goto_4

    .line 1317
    :cond_b
    if-nez v1, :cond_c

    if-eqz v0, :cond_d

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    if-nez v5, :cond_d

    :cond_c
    move v5, v6

    goto :goto_5

    :cond_d
    move v5, v7

    goto :goto_5
.end method

.method public onRecordingDialogClick(Ljava/lang/String;)V
    .locals 1
    .parameter "recordingName"

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 2146
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1141
    const-string v5, "FmRx/Activity"

    const-string v8, "FMRadioActivity.onResume start"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v5, :cond_0

    .line 1143
    const-string v5, "FmRx/Activity"

    const-string v6, "service has not bind finished"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 1148
    .local v1, isPlaying:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v3

    .line 1149
    .local v3, isSearching:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isSeeking()Z

    move-result v4

    .line 1150
    .local v4, isSeeking:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v2

    .line 1151
    .local v2, isScan:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isMakePowerDown()Z

    move-result v0

    .line 1154
    .local v0, isMakePowerdown:Z
    if-nez v2, :cond_1

    if-eqz v4, :cond_a

    :cond_1
    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1155
    if-nez v2, :cond_2

    if-eqz v4, :cond_b

    :cond_2
    move v5, v6

    :goto_2
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1156
    if-nez v2, :cond_3

    if-eqz v4, :cond_c

    :cond_3
    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1159
    const-string v5, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onresume connect.mIsNeedDisablePower: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    if-nez v2, :cond_4

    if-eqz v4, :cond_d

    :cond_4
    move v5, v6

    :goto_4
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1165
    if-eqz v4, :cond_5

    .line 1166
    const-string v5, "FmRx/Activity"

    const-string v8, "onResume: it is seeking"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1170
    :cond_5
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 1172
    if-nez v3, :cond_6

    .line 1173
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V

    .line 1177
    :cond_6
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    if-eqz v5, :cond_7

    .line 1178
    const-string v5, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReume.mPrevRecorderState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSaveRecordingDialog(Ljava/lang/String;)V

    .line 1180
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 1184
    :cond_7
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    if-eqz v5, :cond_8

    .line 1185
    const-string v5, "FmRx/Activity"

    const-string v8, "onservice connetct.reume noAntennaDlg:"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showNoAntennaDialog()V

    .line 1187
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1188
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1191
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1192
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 1195
    :cond_9
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1196
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.mediatek.FMRadio"

    const-class v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1200
    const-string v5, "FmRx/Activity"

    const-string v6, "FMRadioActivity.onResume end"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v5, v1

    .line 1154
    goto/16 :goto_1

    :cond_b
    move v5, v1

    .line 1155
    goto/16 :goto_2

    :cond_c
    move v5, v1

    .line 1156
    goto/16 :goto_3

    .line 1160
    :cond_d
    if-nez v1, :cond_e

    if-eqz v0, :cond_f

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    if-nez v5, :cond_f

    :cond_e
    move v5, v7

    goto/16 :goto_4

    :cond_f
    move v5, v6

    goto/16 :goto_4
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1853
    const/4 v2, 0x5

    .line 1854
    .local v2, size:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1855
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1856
    .local v1, isInRecordingMode:Z
    const-string v3, "isInRecordingMode"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1857
    const-string v3, "mPrevRecorderState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1858
    const-string v3, "mIsFreshRecordingStatus"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1859
    const-string v3, "mIsNeedShowNoAntennaDlg"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1860
    const-string v3, "mRecordState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1861
    const-string v3, "mIsPlaying"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1862
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1108
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1109
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onStart start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1114
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :goto_0
    return-void

    .line 1119
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 1120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1124
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_1

    .line 1125
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->restoreConfiguration()V

    .line 1132
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onStart end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1219
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1224
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1226
    return-void
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 2039
    invoke-static {}, Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;->newInstance()Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 2040
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2041
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2043
    return-void
.end method

.method public showSaveRecordingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 2053
    new-instance v0, Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    invoke-direct {v0, p1}, Lcom/mediatek/FMRadio/FMRecordDialogFragment;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v0, newFragment:Lcom/mediatek/FMRadio/FMRecordDialogFragment;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SaveRecording"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2055
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2056
    return-void
.end method

.method public showSearchDialog()V
    .locals 3

    .prologue
    .line 2062
    invoke-static {}, Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;->newInstance()Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 2063
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2064
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2065
    return-void
.end method
