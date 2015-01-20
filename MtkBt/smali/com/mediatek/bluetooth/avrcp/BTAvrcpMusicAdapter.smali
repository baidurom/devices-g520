.class public Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;
.super Ljava/lang/Thread;
.source "BTAvrcpMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;
    }
.end annotation


# static fields
.field public static final AVRCP_PLAY_PAUSE:I = 0x2

.field public static final AVRCP_PLAY_PLAYING:I = 0x1

.field public static final AVRCP_PLAY_STOP:I = 0x0

.field public static final LAST:I = 0x3

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NOW:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field public static final QUIT_PLAYBACK:Ljava/lang/String; = "com.android.music.quitplayback"

.field public static final TAG:Ljava/lang/String; = "MMI_AVRCP"

.field private static sMusicAlbum:Ljava/lang/String;

.field private static sMusicArtist:Ljava/lang/String;

.field private static sMusicId:J

.field private static sMusicPlaying:Z

.field private static sMusicTrack:Ljava/lang/String;

.field private static sPlayServiceInterface:Z


# instance fields
.field private final mActionKey:I

.field private final mActionKeyInfo:I

.field private final mActionRegNotify:I

.field private final mActionSetSetting:I

.field private mAdapterCallback:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

.field private mAddToNowList:[J

.field private mAttrs:[B

.field private mAudioMax:I

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

.field private mCapabilities:[B

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field public mCurEqualSetting:B

.field public mCurRepeatSetting:B

.field public mCurScanSetting:B

.field public mCurShuffleSetting:B

.field private mCurValue:[B

.field private mDebug:Z

.field private mHandler:Landroid/os/Handler;

.field private mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

.field private mNotifySongId:J

.field private mPendingRegBit:Ljava/util/BitSet;

.field private mPlayConnection:Landroid/content/ServiceConnection;

.field private mPlayService:Lcom/android/music/IMediaPlaybackService;

.field private mPlayStartBind:Z

.field private mPlayerStatus:B

.field private mRegBit:Ljava/util/BitSet;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartBind:Z

.field private mStartReceiver:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSystemListener:Lcom/mediatek/bluetooth/avrcp/BTAvrcpSystemListener;

.field private mValueNum:[B

.field private mValuesEqualizer:[B

.field private mValuesRepeat:[B

.field private mValuesScan:[B

.field private mValuesShuffle:[B

.field private mVolume:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    sput-object v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicArtist:Ljava/lang/String;

    .line 156
    sput-object v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicAlbum:Ljava/lang/String;

    .line 158
    sput-object v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicTrack:Ljava/lang/String;

    .line 160
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicPlaying:Z

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V
    .locals 9
    .parameter "context"
    .parameter "server"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 65
    iput-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    .line 67
    iput-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    .line 69
    const/16 v2, 0x64

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    .line 89
    iput-byte v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayerStatus:B

    .line 91
    const/16 v2, 0x12

    iput-byte v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mVolume:B

    .line 93
    iput-byte v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurEqualSetting:B

    .line 95
    iput-byte v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurRepeatSetting:B

    .line 97
    iput-byte v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurShuffleSetting:B

    .line 99
    iput-byte v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurScanSetting:B

    .line 105
    const/16 v2, 0x11

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mActionKey:I

    .line 107
    const/16 v2, 0x12

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mActionSetSetting:I

    .line 109
    const/16 v2, 0x21

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mActionKeyInfo:I

    .line 111
    const/16 v2, 0x22

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mActionRegNotify:I

    .line 113
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartBind:Z

    .line 115
    iput-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mServiceLooper:Landroid/os/Looper;

    .line 121
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mNotifySongId:J

    .line 123
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartReceiver:Z

    .line 143
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayStartBind:Z

    .line 145
    iput-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    .line 1193
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$2;

    invoke-direct {v2, p0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$2;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mSystemListener:Lcom/mediatek/bluetooth/avrcp/BTAvrcpSystemListener;

    .line 1209
    iput-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    .line 1285
    iput-boolean v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mDebug:Z

    .line 1323
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1369
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayConnection:Landroid/content/ServiceConnection;

    .line 1393
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$5;

    invoke-direct {v2, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$5;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mConnection:Landroid/content/ServiceConnection;

    .line 1443
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

    invoke-direct {v2, p0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAdapterCallback:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

    .line 168
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    .line 170
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    .line 173
    const-string v2, "BTAvrcpMusicAdapterThread "

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    .line 176
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToAbosoluteVolume(I)B

    move-result v2

    iput-byte v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mVolume:B

    .line 182
    :goto_0
    const/16 v2, 0x3f

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToMgrVolume(B)I

    .line 183
    const/16 v2, 0x7f

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToMgrVolume(B)I

    .line 184
    iget v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToAbosoluteVolume(I)B

    .line 185
    iget v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToAbosoluteVolume(I)B

    .line 187
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAttrs:[B

    .line 188
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValueNum:[B

    .line 189
    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurValue:[B

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, i:B
    const/4 v2, 0x5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    .line 194
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    int-to-byte v1, v4

    .end local v0           #i:B
    .local v1, i:B
    aput-byte v4, v2, v0

    .line 195
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v3

    .end local v1           #i:B
    .restart local v0       #i:B
    aput-byte v5, v2, v1

    .line 203
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v3

    .end local v0           #i:B
    .restart local v1       #i:B
    const/16 v3, 0x9

    aput-byte v3, v2, v0

    .line 204
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v3

    .end local v1           #i:B
    .restart local v0       #i:B
    const/16 v3, 0xa

    aput-byte v3, v2, v1

    .line 205
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v3

    .end local v0           #i:B
    .restart local v1       #i:B
    const/16 v3, 0xb

    aput-byte v3, v2, v0

    .line 209
    const/4 v0, 0x0

    .line 211
    .end local v1           #i:B
    .restart local v0       #i:B
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAttrs:[B

    int-to-byte v1, v4

    .end local v0           #i:B
    .restart local v1       #i:B
    aput-byte v5, v2, v0

    .line 212
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAttrs:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v3

    .end local v1           #i:B
    .restart local v0       #i:B
    aput-byte v7, v2, v1

    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValueNum:[B

    int-to-byte v1, v4

    .end local v0           #i:B
    .restart local v1       #i:B
    aput-byte v5, v2, v0

    .line 218
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValueNum:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v3

    .end local v1           #i:B
    .restart local v0       #i:B
    aput-byte v5, v2, v1

    .line 223
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurValue:[B

    aput-byte v4, v2, v6

    .line 224
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCurValue:[B

    aput-byte v4, v2, v4

    .line 229
    new-array v2, v7, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesRepeat:[B

    .line 230
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesShuffle:[B

    .line 233
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesRepeat:[B

    aput-byte v4, v2, v6

    .line 234
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesRepeat:[B

    aput-byte v5, v2, v4

    .line 235
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesRepeat:[B

    aput-byte v7, v2, v5

    .line 237
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesShuffle:[B

    aput-byte v4, v2, v6

    .line 238
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesShuffle:[B

    aput-byte v5, v2, v4

    .line 240
    new-instance v2, Ljava/util/BitSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    .line 241
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 243
    new-instance v2, Ljava/util/BitSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    .line 244
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 246
    sget-boolean v2, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportMusicUI:Z

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 251
    :goto_1
    return-void

    .line 178
    .end local v0           #i:B
    :cond_0
    iput v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    .line 179
    iput-byte v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mVolume:B

    goto/16 :goto_0

    .line 249
    .restart local v0       #i:B
    :cond_1
    const-string v2, "MMI_AVRCP"

    const-string v3, "[BT][AVRCP] No AvrcpMusic debug looper"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;)Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mDebug:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAdapterCallback:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Ljava/util/BitSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    return-object v0
.end method

.method private convertToAbosoluteVolume(I)B
    .locals 6
    .parameter "iMgrVolume"

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, ret:B
    int-to-float v1, p1

    iget v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42fe

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-byte v0, v1

    .line 764
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] Adapter convertToAbosoluteVolume Mgr(%d) to abs(%d) MaxMgr(%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return v0
.end method

.method private convertToMgrVolume(B)I
    .locals 6
    .parameter "absolute"

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, ret:I
    int-to-float v1, p1

    const/high16 v2, 0x42fe

    div-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 772
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] Adapter convertToMgrVolume absolute(%d) to Mgr(%d) MaxMgr(%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v0
.end method

.method private handleKeyMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1045
    const/4 v0, 0x0

    .line 1047
    .local v0, apKey:I
    const-wide/16 v2, 0x0

    .line 1048
    .local v2, id:J
    const/4 v1, 0x0

    .line 1050
    .local v1, eventId:I
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1153
    :goto_0
    return-void

    .line 1052
    :sswitch_0
    const-string v5, "[BT][AVRCP] Receive a Avrcpkey:%d "

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, sMsg:Ljava/lang/String;
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] ACTION_KEY msg.what:%d arg1:%d arg2:%d"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1057
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->handleKeyMessageKeyEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 1062
    .end local v4           #sMsg:Ljava/lang/String;
    :sswitch_1
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] KEY_INFO msg.what:%d arg1:%d arg2:%d"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget v5, p1, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 1104
    const-string v5, "KeyCode:%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .restart local v4       #sMsg:Ljava/lang/String;
    goto :goto_0

    .line 1065
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_0
    const-string v4, "POWER Key"

    .line 1066
    .restart local v4       #sMsg:Ljava/lang/String;
    goto :goto_0

    .line 1068
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_1
    const-string v4, "VOLUME UP"

    .line 1069
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1071
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_2
    const-string v4, "VOLUME DOWN"

    .line 1072
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1074
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_3
    const-string v4, "MUTE"

    .line 1075
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1077
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_4
    const-string v4, "PLAY"

    .line 1078
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1080
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_5
    const-string v4, "STOP"

    .line 1081
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1083
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_6
    const-string v4, "PAUSE"

    .line 1084
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1086
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_7
    const-string v4, "RECORD"

    .line 1087
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1089
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_8
    const-string v4, "REWIND"

    .line 1090
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1092
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_9
    const-string v4, "FAST FORWARD"

    .line 1093
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1095
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_a
    const-string v4, "EJECT"

    .line 1096
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1098
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_b
    const-string v4, "FORWARD"

    .line 1099
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1101
    .end local v4           #sMsg:Ljava/lang/String;
    :pswitch_c
    const-string v4, "BACKWARD"

    .line 1102
    .restart local v4       #sMsg:Ljava/lang/String;
    goto/16 :goto_0

    .line 1111
    .end local v4           #sMsg:Ljava/lang/String;
    :sswitch_2
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] ACTION_REG_NOTIFY for notifyChange msg.what:%d arg1:%d arg2:%d cardinality:%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->cardinality()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v6, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    monitor-enter v6

    .line 1119
    :try_start_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    sparse-switch v5, :sswitch_data_1

    .line 1147
    :cond_0
    :goto_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1121
    :sswitch_3
    const/4 v1, 0x1

    .line 1122
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1123
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-byte v9, v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationPlayStatusChangedNative(BBB)Z

    .line 1124
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_1

    .line 1128
    :sswitch_4
    const/4 v1, 0x2

    .line 1129
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1130
    sget-wide v7, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    iput-wide v7, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mNotifySongId:J

    .line 1131
    const-string v5, "MMI_AVRCP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BT][AVRCP] songid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mNotifySongId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mNotifySongId:J

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationTrackChangedNative(BBJ)Z

    .line 1133
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_1

    .line 1138
    :sswitch_5
    const/16 v1, 0x9

    .line 1139
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1140
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationNowPlayingChangedNative(BB)Z

    .line 1141
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->clear(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1050
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch

    .line 1063
    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1119
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x9 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleKeyMessageKeyEvent(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1156
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    if-nez v1, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 1185
    :pswitch_0
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] Unhandle AvrcpKey:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] AVRCP fail to passToHandleMessage what:%d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getPlayStatus()B

    move-result v1

    if-eq v6, v1, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->play()V

    goto :goto_0

    .line 1169
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getPlayStatus()B

    move-result v1

    if-eqz v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->stop()V

    goto :goto_0

    .line 1174
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getPlayStatus()B

    move-result v1

    if-ne v6, v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->pause()V

    goto :goto_0

    .line 1179
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->next()V

    goto :goto_0

    .line 1182
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->prev()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleSettingMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1042
    return-void
.end method

.method public static updateMusicTrackInfo(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1291
    if-eqz p0, :cond_2

    .line 1292
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1293
    const-string v2, "artist"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicArtist:Ljava/lang/String;

    .line 1294
    const-string v2, "album"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicAlbum:Ljava/lang/String;

    .line 1295
    const-string v2, "track"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicTrack:Ljava/lang/String;

    .line 1297
    const-string v2, "id"

    const-wide/16 v5, -0x1

    invoke-virtual {p0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    .line 1298
    const-string v2, "MMI_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] update-info id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v4, [Ljava/lang/Object;

    sget-wide v8, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1304
    const-string v2, "playing"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1306
    .local v0, b1:Ljava/lang/Boolean;
    const-string v2, "playstate"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1307
    .local v1, b2:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v4

    :goto_0
    sput-boolean v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicPlaying:Z

    .line 1308
    const-string v2, "MMI_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] update-info playing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    .end local v0           #b1:Ljava/lang/Boolean;
    .end local v1           #b2:Ljava/lang/Boolean;
    :cond_2
    sget-object v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicArtist:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1314
    const-string v2, "MMI_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] track-info artist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPlaying:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%b"

    new-array v4, v4, [Ljava/lang/Object;

    sget-boolean v7, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicPlaying:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :goto_1
    return-void

    .restart local v0       #b1:Ljava/lang/Boolean;
    .restart local v1       #b2:Ljava/lang/Boolean;
    :cond_3
    move v2, v3

    .line 1307
    goto :goto_0

    .line 1317
    .end local v0           #b1:Ljava/lang/Boolean;
    .end local v1           #b2:Ljava/lang/Boolean;
    :cond_4
    const-string v2, "MMI_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] track-info isPlaying:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%b"

    new-array v4, v4, [Ljava/lang/Object;

    sget-boolean v7, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicPlaying:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public abortContinueInd()V
    .locals 2

    .prologue
    .line 727
    const-string v0, "MMI_AVRCP"

    const-string v1, "Receive an abort indication !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method public addToNowPlaying(J)Z
    .locals 11
    .parameter "id"

    .prologue
    .line 836
    const/4 v4, 0x0

    .line 837
    .local v4, ret:Z
    const/4 v2, 0x0

    .line 839
    .local v2, hasExit:Z
    const/4 v3, 0x0

    .line 841
    .local v3, i:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 842
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v5, :cond_0

    .line 844
    const/4 v5, 0x1

    :try_start_0
    new-array v0, v5, [J

    .line 845
    .local v0, curList:[J
    const/4 v5, 0x0

    aput-wide p1, v0, v5

    .line 846
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    const/4 v6, 0x3

    invoke-interface {v5, v0, v6}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V

    .line 847
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] enqueu %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    const/4 v4, 0x1

    .line 854
    .end local v0           #curList:[J
    :cond_0
    :goto_0
    return v4

    .line 849
    :catch_0
    move-exception v1

    .line 850
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "MMI_AVRCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BT][AVRCP] BTAvrcpMusicAdapter addToNowPlaying enqueue exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkAndBindMusicService()V
    .locals 0

    .prologue
    .line 789
    return-void
.end method

.method public checkAndBindPlayService()V
    .locals 3

    .prologue
    .line 793
    sget-boolean v1, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->startToBindPlayService()V

    .line 797
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] BTAvrcpMusicAdapter checkAndBindPlayService sleep interruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_1
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] ignore the mMusic playService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deinit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartBind:Z

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] Adapter deinit"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][TT] unregistercallback "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAdapterCallback:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->unregisterCallback(Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    .line 283
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->stopToBind()V

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 287
    iput-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mServiceLooper:Landroid/os/Looper;

    if-eqz v1, :cond_3

    .line 290
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 291
    iput-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mServiceLooper:Landroid/os/Looper;

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->stopReceiver()V

    .line 295
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 296
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] BTAvrcpMusicAdapter mHandler join 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 300
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :cond_4
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MMI_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP][TT] unregistercallback exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 302
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] join fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAbsoluteVolume()B
    .locals 1

    .prologue
    .line 758
    iget-byte v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mVolume:B

    return v0
.end method

.method public getCurPlayerAppValue(B)B
    .locals 10
    .parameter "attrId"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 389
    const/4 v1, 0x0

    .line 391
    .local v1, value:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindMusicService()V

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 416
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] attr_id is not find attr_id:%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return v2

    .line 395
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getRepeatMode()I

    move-result v1

    .line 396
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] getRepeatMode ret %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    int-to-byte v2, v1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] Exception ! Fail to getRepeatMode %d %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v3}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getShuffleMode()I

    move-result v1

    .line 405
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] getShuffleMode ret %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    :goto_2
    int-to-byte v2, v1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] Exception ! Fail to getShuffleMode %d %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 392
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getElementAttribute(JI)Ljava/lang/String;
    .locals 11
    .parameter "identifier"
    .parameter "attrId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 940
    const/4 v3, 0x0

    .line 941
    .local v3, s:Ljava/lang/String;
    const/4 v2, 0x0

    .line 942
    .local v2, lsplit:I
    const-wide/16 v0, 0x0

    .line 958
    .local v0, id:J
    const-string v7, "MMI_AVRCP"

    const-string v8, "[BT][AVRCP] AVRCP getElementAttribute %b"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v10, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    packed-switch p3, :pswitch_data_0

    move-object v4, v3

    .line 1005
    .end local v3           #s:Ljava/lang/String;
    .local v4, s:Ljava/lang/String;
    :goto_1
    return-object v4

    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    move v5, v6

    .line 958
    goto :goto_0

    .line 963
    :pswitch_0
    sget-object v3, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicTrack:Ljava/lang/String;

    .line 964
    if-nez v3, :cond_1

    .line 965
    const-string v3, ""

    .line 996
    :cond_1
    :goto_2
    :pswitch_1
    if-nez v3, :cond_2

    .line 997
    const-string v3, ""

    :cond_2
    move-object v4, v3

    .line 1005
    .end local v3           #s:Ljava/lang/String;
    .restart local v4       #s:Ljava/lang/String;
    goto :goto_1

    .line 969
    .end local v4           #s:Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :pswitch_2
    sget-object v3, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicArtist:Ljava/lang/String;

    .line 970
    if-nez v3, :cond_1

    .line 971
    const-string v3, ""

    goto :goto_2

    .line 975
    :pswitch_3
    sget-object v3, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicAlbum:Ljava/lang/String;

    .line 976
    if-nez v3, :cond_1

    .line 977
    const-string v3, ""

    goto :goto_2

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getNowPlaying()[J
    .locals 3

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 860
    .local v1, playing:[J
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 861
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 862
    const/4 v2, 0x0

    .line 869
    :goto_0
    return-object v2

    .line 865
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 869
    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPlayerAppAttrText(B)Ljava/lang/String;
    .locals 5
    .parameter "attrId"

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_0

    .line 502
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP] getPlayerAppAttrText unknow id:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 494
    :pswitch_0
    const-string v0, "Equalizer Setting"

    goto :goto_0

    .line 496
    :pswitch_1
    const-string v0, "RepeatMode Setting"

    goto :goto_0

    .line 498
    :pswitch_2
    const-string v0, "Shuffle Setting"

    goto :goto_0

    .line 500
    :pswitch_3
    const-string v0, "Scan Setting"

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPlayerAppValueText(BB)Ljava/lang/String;
    .locals 1
    .parameter "attrId"
    .parameter "valueId"

    .prologue
    const/4 v0, 0x0

    .line 508
    packed-switch p1, :pswitch_data_0

    .line 552
    :goto_0
    return-object v0

    .line 510
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 512
    :pswitch_1
    const-string v0, "Equal Off"

    goto :goto_0

    .line 514
    :pswitch_2
    const-string v0, "Equal On"

    goto :goto_0

    .line 520
    :pswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 522
    :pswitch_4
    const-string v0, "Repeat Off"

    goto :goto_0

    .line 524
    :pswitch_5
    const-string v0, "Repeat Single"

    goto :goto_0

    .line 526
    :pswitch_6
    const-string v0, "Repeat All"

    goto :goto_0

    .line 532
    :pswitch_7
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 534
    :pswitch_8
    const-string v0, "Shuffle Off"

    goto :goto_0

    .line 536
    :pswitch_9
    const-string v0, "Shuffle All"

    goto :goto_0

    .line 542
    :pswitch_a
    packed-switch p2, :pswitch_data_4

    goto :goto_0

    .line 544
    :pswitch_b
    const-string v0, "Equal Off"

    goto :goto_0

    .line 546
    :pswitch_c
    const-string v0, "Equal On"

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 520
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 532
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 542
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getPlayerstatus()B
    .locals 8

    .prologue
    .line 592
    const/4 v3, -0x1

    .line 593
    .local v3, status:B
    const/4 v0, 0x0

    .line 594
    .local v0, bPlay:Z
    const-wide/16 v1, 0x0

    .line 596
    .local v1, id:J
    sget-boolean v4, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicPlaying:Z

    if-eqz v4, :cond_0

    .line 597
    const/4 v3, 0x1

    .line 605
    :goto_0
    iput-byte v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayerStatus:B

    .line 607
    return v3

    .line 599
    :cond_0
    const-wide/16 v4, -0x1

    sget-wide v6, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 600
    const/4 v3, 0x2

    goto :goto_0

    .line 602
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPlayerstatusSongLength()I
    .locals 4

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, duration:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 614
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 616
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v0, v2

    :goto_0
    move v2, v0

    .line 623
    :goto_1
    return v2

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPlayerstatusSongPos()I
    .locals 4

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 629
    .local v1, position:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 630
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/android/music/IMediaPlaybackService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    :goto_0
    move v2, v1

    .line 638
    :goto_1
    return v2

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0

    .line 638
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSupportVersion()B
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 264
    sget-boolean v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    if-eqz v0, :cond_0

    .line 265
    const/16 v0, 0xe

    .line 267
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public informBatteryStatus(B)V
    .locals 5
    .parameter "status"

    .prologue
    .line 557
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP] informBatteryStatus status:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method public informDisplayCharset(B[S)Z
    .locals 7
    .parameter "count"
    .parameter "charsets"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    if-ge v0, p1, :cond_1

    .line 564
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] charset i:%d value:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    aget-short v6, p2, v0

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    aget-short v3, p2, v0

    const/16 v4, 0x6a

    if-ne v3, v4, :cond_0

    .line 570
    :goto_1
    return v1

    .line 563
    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 570
    goto :goto_1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->startReceiver()V

    .line 258
    return-void
.end method

.method public listPlayerAppAttribute()[B
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAttrs:[B

    return-object v0
.end method

.method public listPlayerAppValue(B)[B
    .locals 5
    .parameter "attrId"

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 384
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP] listPlayerAppValue attr_id:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesEqualizer:[B

    goto :goto_0

    .line 373
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesRepeat:[B

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesShuffle:[B

    goto :goto_0

    .line 379
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mValuesScan:[B

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notificationBatteryStatusChanged(BBB)V
    .locals 1
    .parameter "error"
    .parameter "isinterim"
    .parameter "status"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationBatteryStatusChanged(BBB)V

    .line 577
    :cond_0
    return-void
.end method

.method public notificationSystemStatusChanged(BBB)V
    .locals 1
    .parameter "error"
    .parameter "isinterim"
    .parameter "status"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationSystemStatusChanged(BBB)V

    .line 583
    :cond_0
    return-void
.end method

.method public notificationVolumeChanged(BBB)V
    .locals 1
    .parameter "error"
    .parameter "isinterim"
    .parameter "volume"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationVolumeChanged(BBB)V

    .line 589
    :cond_0
    return-void
.end method

.method public onConnect()V
    .locals 3

    .prologue
    .line 308
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP] Adapter onConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->startToBind()V

    .line 310
    const-string v0, "MMI_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] mbPlayServiceInterface is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    monitor-enter v1

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 321
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    return-void

    .line 318
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 321
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onDisconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartBind:Z

    if-eqz v1, :cond_1

    .line 326
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP] Adapter onDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][TT] unregistercallback "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAdapterCallback:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$AvrcpMusicAdapterStub;

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->unregisterCallback(Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusicCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    .line 340
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->stopToBind()V

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    monitor-enter v2

    .line 348
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 349
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    monitor-enter v2

    .line 351
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPendingRegBit:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 352
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 354
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][TT] BTAvrcpMusicAdapter onDisconnect unregistercallback Exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v0           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 352
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public passNotifyMsg(II)Z
    .locals 2
    .parameter "event"
    .parameter "interval"

    .prologue
    .line 926
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 928
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 930
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 931
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 933
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    const/4 v1, 0x1

    .line 936
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public passThroughKeyInd(IB)V
    .locals 8
    .parameter "keyvalue"
    .parameter "isPress"

    .prologue
    const/4 v7, 0x1

    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, apKey:I
    const-string v3, "[BT][AVRCP] Receive a Avrcpkey:%d (APKey:%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, sMsg:Ljava/lang/String;
    const-string v3, "MMI_AVRCP"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-ne p2, v7, :cond_0

    sget-boolean v3, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportMusicUI:Z

    if-eqz v3, :cond_0

    .line 910
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 911
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 912
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x21

    iput v3, v1, Landroid/os/Message;->what:I

    .line 914
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 915
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 917
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 922
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public passToHandleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1029
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->handleKeyMessage(Landroid/os/Message;)V

    .line 1038
    :goto_0
    return-void

    .line 1031
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->handleSettingMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public playItems(J)Z
    .locals 11
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 809
    const/4 v4, 0x0

    .line 810
    .local v4, ret:Z
    const/4 v2, 0x0

    .line 812
    .local v2, hasExit:Z
    const/4 v3, 0x0

    .line 815
    .local v3, i:I
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    .line 816
    const-string v6, "MMI_AVRCP"

    const-string v7, "[BT][AVRCP] Wrong id 0"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_0
    return v5

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindPlayService()V

    .line 821
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v5, :cond_1

    .line 823
    const/4 v5, 0x1

    :try_start_0
    new-array v0, v5, [J

    .line 824
    .local v0, curList:[J
    const/4 v5, 0x0

    aput-wide p1, v0, v5

    .line 825
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    const/4 v6, 0x1

    invoke-interface {v5, v0, v6}, Lcom/android/music/IMediaPlaybackService;->enqueue([JI)V

    .line 826
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] enqueu %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    const/4 v4, 0x1

    .end local v0           #curList:[J
    :cond_1
    :goto_1
    move v5, v4

    .line 832
    goto :goto_0

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "MMI_AVRCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BT][AVRCP] BTAvrcpMusicAdapter playItem enqueue exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public playerAppCapabilities()[B
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mCapabilities:[B

    return-object v0
.end method

.method public registerNotification(BI)Z
    .locals 10
    .parameter "eventId"
    .parameter "interval"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 645
    const/4 v0, 0x0

    .line 650
    .local v0, bReg:Z
    packed-switch p1, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    .line 714
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    monitor-enter v5

    .line 715
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v4, p1}, Ljava/util/BitSet;->set(I)V

    .line 716
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v4, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 717
    const-string v4, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] mRegBit set %d Reg:%b cardinality:%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mRegBit:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->cardinality()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_1
    return v0

    .line 655
    :pswitch_1
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] MusicAdapter blocks support register event:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x0

    .line 657
    goto :goto_0

    .line 663
    :pswitch_2
    sparse-switch p1, :sswitch_data_0

    .line 694
    :goto_1
    const-string v4, "MMI_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] registerNotification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatus()B

    move-result v3

    .line 667
    .local v3, status:B
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v4, v8, v6, v3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationPlayStatusChangedNative(BBB)Z

    .line 670
    const/4 v0, 0x1

    .line 672
    goto :goto_1

    .line 674
    .end local v3           #status:B
    :sswitch_1
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatus()B

    move-result v3

    .line 675
    .restart local v3       #status:B
    packed-switch v3, :pswitch_data_1

    .line 681
    const-wide/16 v1, -0x1

    .line 684
    .local v1, lvalue:J
    :goto_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v4, v8, v6, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationTrackChangedNative(BBJ)Z

    .line 685
    const/4 v0, 0x1

    .line 686
    goto :goto_1

    .line 678
    .end local v1           #lvalue:J
    :pswitch_3
    sget-wide v1, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sMusicId:J

    .line 679
    .restart local v1       #lvalue:J
    goto :goto_2

    .line 688
    .end local v1           #lvalue:J
    .end local v3           #status:B
    :sswitch_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    invoke-virtual {v4, v8, v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationNowPlayingChangedNative(BB)Z

    .line 689
    const/4 v0, 0x1

    .line 690
    goto :goto_1

    .line 699
    :pswitch_4
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mSystemListener:Lcom/mediatek/bluetooth/avrcp/BTAvrcpSystemListener;

    if-eqz v4, :cond_0

    .line 700
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mSystemListener:Lcom/mediatek/bluetooth/avrcp/BTAvrcpSystemListener;

    invoke-virtual {v4, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpSystemListener;->regNotificationEvent(BI)Z

    move-result v0

    goto/16 :goto_0

    .line 705
    :pswitch_5
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] MusicAdapter blocks support register event:%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    .line 707
    goto/16 :goto_0

    .line 719
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch

    .line 675
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1016
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mServiceLooper:Landroid/os/Looper;

    .line 1017
    new-instance v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$1;-><init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    .line 1024
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    .line 1026
    return-void
.end method

.method public sendAvrcpKeyEvent(IB)V
    .locals 8
    .parameter "keyvalue"
    .parameter "isPress"

    .prologue
    const/4 v7, 0x1

    .line 874
    const/4 v0, 0x0

    .line 876
    .local v0, apKey:I
    const-string v3, "[BT][AVRCP] Receive a Avrcpkey:%d (APKey:%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, sMsg:Ljava/lang/String;
    const-string v3, "MMI_AVRCP"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-ne p2, v7, :cond_0

    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 883
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 884
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x11

    iput v3, v1, Landroid/os/Message;->what:I

    .line 886
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 887
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 889
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 894
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setAbsoluteVolume(B)Z
    .locals 10
    .parameter "volume"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 734
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v5, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v3

    .line 743
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->convertToMgrVolume(B)I

    move-result v0

    .line 744
    .local v0, adjVolume:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v5, :cond_0

    .line 745
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 746
    .local v2, getVolume:I
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v7, v0, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 747
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 748
    .local v1, compare:I
    const-string v5, "MMI_AVRCP"

    const-string v6, "[BT][AVRCP] Adapter before:%d to-set:%d after:%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    if-ne v1, v0, :cond_0

    .line 750
    iput-byte p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mVolume:B

    move v3, v4

    .line 751
    goto :goto_0
.end method

.method public setPlayerAppValue(BB)Z
    .locals 11
    .parameter "attrId"
    .parameter "value"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, lDone:Z
    const/4 v2, 0x0

    .line 424
    .local v2, mode:I
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->checkAndBindMusicService()V

    .line 425
    if-ne p1, v10, :cond_1

    .line 427
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v4}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getRepeatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 431
    :goto_0
    if-ne p2, v2, :cond_0

    .line 432
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] Already in repeat mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    return v3

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] Exception ! Fail to getRepeatMode %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 453
    :cond_1
    :goto_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 455
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v4}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->getShuffleMode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 459
    :goto_3
    if-ne p2, v2, :cond_2

    .line 460
    const-string v4, "MMI_AVRCP"

    const-string v5, "Already in shutffle mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v4, p2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->setRepeatMode(I)Z

    move-result v1

    .line 441
    if-eqz v1, :cond_1

    .line 442
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] setRepeatMode ret %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 444
    :catch_1
    move-exception v0

    .line 445
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] Exception ! Fail to setRepeatMode %d %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 456
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 457
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] Exception ! Fail to getShuffleMode %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 463
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    packed-switch p2, :pswitch_data_1

    .line 484
    :cond_3
    :goto_4
    :pswitch_1
    if-nez v1, :cond_4

    .line 485
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] fail to set attr_id:%d to value:%d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v1

    .line 487
    goto/16 :goto_1

    .line 467
    :pswitch_2
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    invoke-interface {v4, p2}, Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;->setShuffleMode(I)Z

    move-result v1

    .line 468
    if-eqz v1, :cond_3

    .line 469
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] setShuffleMode ret %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 471
    :catch_3
    move-exception v0

    .line 472
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v4, "MMI_AVRCP"

    const-string v5, "[BT][AVRCP] Exception ! Fail to setShuffleMode %d %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v4, "MMI_AVRCP"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 463
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public startReceiver()V
    .locals 4

    .prologue
    .line 1244
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][b] startReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartReceiver:Z

    if-eqz v1, :cond_0

    .line 1246
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][b] startReceiver ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :goto_0
    return-void

    .line 1250
    :cond_0
    const-string v1, "MMI_AVRCP"

    const-string v2, "[BT][AVRCP][b] startReceiver music intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1252
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1254
    const-string v1, "com.android.music.quitplayback"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartReceiver:Z

    goto :goto_0
.end method

.method public startToBind()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method public startToBindPlayService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, bBindRet:Z
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_0

    .line 1220
    sget-boolean v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    if-nez v2, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    sput-boolean v7, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    .line 1227
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.MediaPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1228
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.MediaPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1229
    const-string v2, "MMI_AVRCP"

    const-string v3, "[BT][AVRCP][b] startPlaybackService bBindRet:%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    sput-boolean v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    .line 1231
    if-nez v0, :cond_2

    .line 1232
    const-string v2, "MMI_AVRCP"

    const-string v3, "[BT][AVRCP] mMusicService does not have play interface "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayStartBind:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_1
    const-string v2, "MMI_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] mbPlayServiceInterface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1235
    :catch_0
    move-exception v1

    .line 1236
    .local v1, ex:Ljava/lang/SecurityException;
    sput-boolean v7, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sPlayServiceInterface:Z

    goto :goto_1
.end method

.method public stopReceiver()V
    .locals 2

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartReceiver:Z

    if-nez v0, :cond_0

    .line 1264
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP][b] stopReceiver ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return-void

    .line 1267
    :cond_0
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP] startReceiver stop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartReceiver:Z

    goto :goto_0
.end method

.method public stopToBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1274
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP][b] stopToBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1276
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mStartBind:Z

    .line 1280
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP][b] PlayService stopToBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mAvrcpSrv:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1282
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayStartBind:Z

    .line 1283
    return-void
.end method
