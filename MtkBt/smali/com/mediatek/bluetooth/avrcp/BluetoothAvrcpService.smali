.class public Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;
.super Landroid/app/Service;
.source "BluetoothAvrcpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;
    }
.end annotation


# static fields
.field private static final FAIL:B = 0x1t

.field public static final FILENAME_ATTR_ID:I = 0x1

.field private static final OK:B = 0x0t

.field public static final STATUS_OK:B = 0x4t

.field public static final TAG:Ljava/lang/String; = "EXT_AVRCP"

.field public static final UTF8_ARRAY:[S = null

.field private static final UTF8_CHARSET:S = 0x6as

.field private static final UT_TAG:Ljava/lang/String; = "[BT][AVRCP_UT][BluetoothAvrcpService]"

.field public static sDebugMsg:Z

.field public static sPTSDebugMode:I

.field public static sSupportBrowse:Z

.field public static sSupportMusicUI:Z

.field public static sUtState:Z


# instance fields
.field mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

.field private final mBinder:Landroid/os/IBinder;

.field mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurBrowserId:S

.field private mCurPlayerId:S

.field private mNativeObject:I

.field private mStartId:I

.field private mStopped:Z

.field private mThread:Ljava/lang/Thread;

.field private mTrackAddressedPlayerChangedFlag:Z

.field private mTrackAvailableChangedFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sput v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    .line 86
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->UTF8_ARRAY:[S

    .line 91
    sput-boolean v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportMusicUI:Z

    .line 94
    sput-boolean v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportBrowse:Z

    .line 96
    sput-boolean v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sDebugMsg:Z

    .line 99
    sput-boolean v1, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sUtState:Z

    return-void

    .line 86
    :array_0
    .array-data 0x2
        0x6at 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x6at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStopped:Z

    .line 65
    iput-short v3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S

    .line 67
    iput-short v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurBrowserId:S

    .line 69
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z

    .line 71
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStartId:I

    .line 1536
    new-instance v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService$ServiceStub;-><init>(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBinder:Landroid/os/IBinder;

    .line 114
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] BluetoothAvrcpService Constructor enable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-boolean v3, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportMusicUI:Z

    .line 122
    sput-boolean v2, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportBrowse:Z

    .line 123
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] Support AVRCP1.3 & AVRCP1.0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;-><init>(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    .line 129
    sget-boolean v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sUtState:Z

    if-nez v0, :cond_0

    .line 130
    const-string v0, "[BT][AVRCP_UT][BluetoothAvrcpService]"

    const-string v1, "[API: service constructor] load library : extavrcp_jni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "extavrcp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->classInitNative()Z

    .line 137
    return-void

    .line 133
    :cond_0
    const-string v0, "[BT][AVRCP_UT][BluetoothAvrcpService]"

    const-string v1, "[API: service constructor] load library : extavrcp_ut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "extavrcp_ut"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;S)S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-short p1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z

    return p1
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeObjectNative()V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()Z
.end method

.method public static native getMaxPlayerNumNative()I
.end method

.method private native initializeNativeObjectNative()V
.end method

.method public static isSupportBrowse()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sSupportBrowse:Z

    return v0
.end method

.method private native listenerNativeEventLoop(Z)Z
.end method

.method private notifyProfileState(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 331
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] notifyProfileState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.profilemanager.extra.PROFILE"

    sget-object v2, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_AVRCP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    const-string v1, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 215
    const-string v2, "action"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, action:Ljava/lang/String;
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 219
    .local v1, state:I
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {v2, p0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    .line 223
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->init()V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->enable()Z

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disable()V

    .line 231
    iget v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStartId:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0

    .line 233
    :cond_3
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] parseIntent state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_4
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] intent without action"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-nez v2, :cond_5

    .line 238
    new-instance v2, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {v2, p0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    .line 239
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->init()V

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-eqz v2, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->enable()Z

    goto :goto_0
.end method

.method private testBrowser()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    const-string v1, "es"

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->search(Ljava/lang/String;)Z

    .line 145
    return-void
.end method

.method private native wakeupListenerNative()V
.end method


# virtual methods
.method public abortContinueInd()V
    .locals 2

    .prologue
    .line 936
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] abortContinueInd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->abortContinueInd()V

    .line 940
    :cond_0
    return-void
.end method

.method public activateCnf(BI)V
    .locals 5
    .parameter "index"
    .parameter "result"

    .prologue
    .line 391
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] activate_cnf index:%d result:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/16 v0, 0x1000

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    .line 395
    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    goto :goto_0
.end method

.method public native activateConfigNative(BBB)Z
.end method

.method public native activateReqNative(B)Z
.end method

.method public addTonowplayingInd(BJS)V
    .locals 9
    .parameter "scope"
    .parameter "uid"
    .parameter "uidCounter"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1404
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] addTonowplayingInd scope:%d  uid:%d uid_counter:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getUidCounter()S

    move-result v0

    if-ne p4, v0, :cond_2

    .line 1407
    if-ne p1, v5, :cond_0

    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->checkSongIdExisted(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    const-string v0, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] addTonowplayingInd Warning try to add a not exist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0, v7, v7}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->addTonowplayingRspNative(BB)Z

    .line 1425
    :goto_0
    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->addToNowPlaying(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    const/4 v0, 0x4

    invoke-virtual {p0, v6, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->addTonowplayingRspNative(BB)Z

    goto :goto_0

    .line 1418
    :cond_1
    invoke-virtual {p0, v8, v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->addTonowplayingRspNative(BB)Z

    goto :goto_0

    .line 1421
    :cond_2
    const-string v0, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] addTonowplayingInd Warning try to add a not exist id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {p0, v5, v5}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->addTonowplayingRspNative(BB)Z

    goto :goto_0
.end method

.method public native addTonowplayingRspNative(BB)Z
.end method

.method public changePathInd(IBJ)V
    .locals 7
    .parameter "uidCounter"
    .parameter "direction"
    .parameter "uid"

    .prologue
    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, num:I
    const/4 v1, 0x0

    .line 1276
    .local v1, status:B
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] changePathInd uid_counter:%d dir:%d uid:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    int-to-short v3, p1

    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->changePath(SBJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1280
    const-string v2, "EXT_AVRCP"

    const-string v3, "Wait for broserAdapter to call changePathRspNavtive"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :goto_0
    return-void

    .line 1283
    :cond_0
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->changePathRspNative(BBI)Z

    goto :goto_0
.end method

.method public native changePathRspNative(BBI)Z
.end method

.method public native connectBrowseNative()Z
.end method

.method public connectCnf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 412
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] connect_cnf result:%d"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->onConnect()V

    .line 414
    return-void
.end method

.method public connectInd([BLjava/lang/String;I)V
    .locals 3
    .parameter "addr"
    .parameter "deviceName"
    .parameter "psmValue"

    .prologue
    const/4 v2, 0x0

    .line 417
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] connect_ind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->onConnect()V

    .line 419
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->onConnect()V

    .line 424
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAvailableChangedFlag:Z

    .line 425
    iput-boolean v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mTrackAddressedPlayerChangedFlag:Z

    .line 426
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S

    .line 427
    return-void
.end method

.method public native connectNative(Ljava/lang/String;)Z
.end method

.method public native connectReqNative(Ljava/lang/String;)Z
.end method

.method public deactivateCnf(BI)V
    .locals 2
    .parameter "index"
    .parameter "result"

    .prologue
    .line 402
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] deactivate_cnf index:%d result:%d"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v0, 0x1000

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_1

    .line 405
    :cond_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    goto :goto_0
.end method

.method public native deactivateReqNative(B)Z
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 282
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] +disable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] AVRCP disable start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->deactivateReqNative(B)Z

    .line 286
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->shutdownIndThread()V

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    .line 296
    :cond_0
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] Invoke AVRCP cleanupNativeObjectNative"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disableNative()V

    .line 299
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] -disable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] Excpetion "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native disconnectBrowseNative()Z
.end method

.method public disconnectInd()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] disconnect_ind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->onDisconnect()V

    .line 432
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->onDisconnect()V

    .line 436
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    .line 437
    return-void
.end method

.method public native disconnectNative()Z
.end method

.method public native disconnectReqNative()Z
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 251
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] enable - ignore test"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->enableNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] Could not init BluetoothDunService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    .line 275
    :goto_0
    return v0

    .line 263
    :cond_0
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->activateConfigNative(BBB)Z

    .line 265
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->activateReqNative(B)Z

    .line 267
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    .line 268
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    const-string v2, "BluetoothAvrcpServiceThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 274
    :goto_1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notifyProfileState(I)V

    move v0, v1

    .line 275
    goto :goto_0

    .line 271
    :cond_1
    const-string v0, "EXT_AVRCP"

    const-string v2, "enable - ignore"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public native getCapabilitiesRspNative(BB[B)Z
.end method

.method public getCurPlayerAppValueInd(B[B)V
    .locals 12
    .parameter "count"
    .parameter "attrIds"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 550
    const-string v5, "EXT_AVRCP"

    const-string v6, "[BT][AVRCP] getCurPlayerAppValueInd count:%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-nez p1, :cond_0

    .line 558
    const/4 p1, 0x4

    .line 559
    const-string v5, "EXT_AVRCP"

    const-string v6, "[BT][AVRCP] getCurPlayerAppValueInd Change to All count:%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-array p2, v11, [B

    .line 561
    const/4 v3, 0x0

    .local v3, i:B
    :goto_0
    if-ge v3, v11, :cond_0

    .line 562
    add-int/lit8 v5, v3, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    .line 561
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    goto :goto_0

    .line 565
    .end local v3           #i:B
    :cond_0
    new-array v1, p1, [B

    .line 566
    .local v1, dataAttr:[B
    new-array v2, p1, [B

    .line 569
    .local v2, dataValue:[B
    const/4 v4, 0x0

    .line 570
    .local v4, k:B
    const/4 v3, 0x0

    .restart local v3       #i:B
    :goto_1
    if-ge v3, p1, :cond_4

    .line 571
    if-eqz p2, :cond_1

    array-length v5, p2

    if-ge v5, v3, :cond_2

    .line 572
    :cond_1
    move v0, v3

    .line 576
    .local v0, attrId:B
    :goto_2
    aput-byte v0, v1, v4

    .line 577
    iget-object v5, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v5, v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getCurPlayerAppValue(B)B

    move-result v5

    aput-byte v5, v2, v4

    .line 580
    aget-byte v5, v2, v4

    if-eqz v5, :cond_3

    .line 581
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 570
    :goto_3
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    goto :goto_1

    .line 574
    .end local v0           #attrId:B
    :cond_2
    aget-byte v0, p2, v3

    .restart local v0       #attrId:B
    goto :goto_2

    .line 583
    :cond_3
    const-string v5, "EXT_AVRCP"

    const-string v6, "[BT][AVRCP] getCurPlayerAppValueInd attr_id:%d ret:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    aget-byte v8, v2, v4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 588
    .end local v0           #attrId:B
    :cond_4
    if-eqz v4, :cond_5

    .line 589
    invoke-virtual {p0, v9, v4, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getCurplayerappValueRspNative(BB[B[B)Z

    .line 594
    :goto_4
    return-void

    .line 592
    :cond_5
    invoke-virtual {p0, v10, v4, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getCurplayerappValueRspNative(BB[B[B)Z

    goto :goto_4
.end method

.method public native getCurplayerappValueRspNative(BB[B[B)Z
.end method

.method public getElementAttributesInd(JB[I)V
    .locals 15
    .parameter "identifier"
    .parameter "count"
    .parameter "attributeIds"

    .prologue
    .line 714
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 715
    .local v13, sb:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 716
    .local v9, bPTS:I
    move-object/from16 v12, p4

    .line 718
    .local v12, ptsAttirbuteIds:[I
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getElementAttributesInd id:%d count:%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_0

    .line 721
    const-string v2, " [%d]:%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget v5, p4, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 720
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 723
    :cond_0
    const-string v2, "EXT_AVRCP"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz p3, :cond_1

    if-nez p4, :cond_3

    .line 727
    :cond_1
    const/16 p3, 0x3

    .line 728
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 p4, v0

    .line 729
    const/4 v11, 0x0

    .local v11, i:B
    :goto_1
    move/from16 v0, p3

    if-ge v11, v0, :cond_2

    .line 730
    add-int/lit8 v2, v11, 0x1

    aput v2, p4, v11

    .line 729
    add-int/lit8 v2, v11, 0x1

    int-to-byte v11, v2

    goto :goto_1

    .line 732
    :cond_2
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getElementAttributesInd Create all attrs count:%d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-object/from16 v12, p4

    .line 736
    .end local v11           #i:B
    :cond_3
    sget v9, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    .line 740
    if-nez p3, :cond_4

    .line 741
    const/16 p3, 0x3

    .line 742
    move/from16 v0, p3

    new-array v12, v0, [I

    .line 743
    const/4 v11, 0x0

    .restart local v11       #i:B
    :goto_2
    move/from16 v0, p3

    if-ge v11, v0, :cond_5

    .line 744
    add-int/lit8 v2, v11, 0x1

    aput v2, v12, v11

    .line 743
    add-int/lit8 v2, v11, 0x1

    int-to-byte v11, v2

    goto :goto_2

    .line 747
    .end local v11           #i:B
    :cond_4
    move-object/from16 v0, p4

    array-length v2, v0

    new-array v12, v2, [I

    .line 748
    const/4 v11, 0x0

    .restart local v11       #i:B
    :goto_3
    move/from16 v0, p3

    if-ge v11, v0, :cond_5

    .line 749
    aget v2, p4, v11

    aput v2, v12, v11

    .line 748
    add-int/lit8 v2, v11, 0x1

    int-to-byte v11, v2

    goto :goto_3

    .line 752
    :cond_5
    if-eqz v12, :cond_6

    .line 753
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getElementAttributesInd pts_attirbute_ids.length:%d mPTSDebugMode:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_6
    const/4 v11, 0x0

    :goto_4
    move/from16 v0, p3

    if-ge v11, v0, :cond_c

    .line 757
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 759
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget v3, v12, v11

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getElementAttribute(JI)Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, sText:Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_9

    .line 766
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 770
    .local v14, sbdebug:Ljava/lang/StringBuffer;
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] PTS test mode !!! generate a 512 byte data cur mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->sPTSDebugMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v8, ""

    .line 772
    const-string v2, "[BT][AVRCP] PTS debug mode Start:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    const/4 v10, 0x0

    .local v10, debug:I
    :goto_6
    const/16 v2, 0x200

    if-ge v10, v2, :cond_8

    .line 774
    const-string v2, "[%d]=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 761
    .end local v8           #sText:Ljava/lang/String;
    .end local v10           #debug:I
    .end local v14           #sbdebug:Ljava/lang/StringBuffer;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    const/4 v3, 0x1

    const/4 v6, 0x0

    aget v7, v12, v11

    move-wide/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getItemAttribute(BJSI)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #sText:Ljava/lang/String;
    goto :goto_5

    .line 776
    .restart local v10       #debug:I
    .restart local v14       #sbdebug:Ljava/lang/StringBuffer;
    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 780
    .end local v10           #debug:I
    .end local v14           #sbdebug:Ljava/lang/StringBuffer;
    :cond_9
    if-nez v8, :cond_a

    .line 782
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] Fail to getElementAttributes from adapter id:%d i:%d attr_id:%d. Use empty data"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aget v6, p4, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v8, ""

    .line 788
    :cond_a
    if-eqz v9, :cond_b

    .line 789
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] PTS %d %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v3, 0x0

    aget v2, v12, v11

    int-to-byte v6, v2

    const/16 v7, 0x6a

    move-object v2, p0

    move v4, v11

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getElementAttributesRspNative(BBBBSLjava/lang/String;)Z

    .line 756
    :goto_7
    add-int/lit8 v2, v11, 0x1

    int-to-byte v11, v2

    goto/16 :goto_4

    .line 793
    :cond_b
    const/4 v3, 0x0

    aget v2, p4, v11

    int-to-byte v6, v2

    const/16 v7, 0x6a

    move-object v2, p0

    move v4, v11

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getElementAttributesRspNative(BBBBSLjava/lang/String;)Z

    goto :goto_7

    .line 798
    .end local v8           #sText:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public native getElementAttributesRspNative(BBBBSLjava/lang/String;)Z
.end method

.method public native getFileSystemItemEndRspNative(BBS)Z
.end method

.method public native getFileSystemItemFileAttrRspNative(BBBISSLjava/lang/String;)Z
.end method

.method public native getFileSystemItemFileRspNative(BBBJBSSLjava/lang/String;)Z
.end method

.method public native getFileSystemItemFolderRspNative(BBBJBBSSLjava/lang/String;)Z
.end method

.method public native getFileSystemItemStartRspNative()Z
.end method

.method public getFileSystemitemsList(IIB[I)V
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "count"
    .parameter "attrIds"

    .prologue
    .line 1035
    const/4 v6, 0x0

    .line 1036
    .local v6, i:B
    const/16 v5, 0x65

    .line 1037
    .local v5, charset:S
    const-wide/16 v10, 0x0

    .line 1038
    .local v10, uid:J
    const-string v9, ""

    .line 1040
    .local v9, sSample:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1041
    .local v4, attrId:I
    const/4 v8, 0x0

    .line 1042
    .local v8, mediatype:B
    const/4 v7, 0x0

    .line 1044
    .local v7, len:S
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 1046
    const-string v12, "EXT_AVRCP"

    const-string v13, "[BT][AVRCP] getFileSystemitemsList Wrong range start:%d end:%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v12, 0xb

    const/16 v13, 0xb

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemEndRspNative(BBS)Z

    .line 1059
    :goto_0
    return-void

    .line 1053
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v12, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getFileSystemitemsList(IIB[I)Z

    goto :goto_0

    .line 1056
    :cond_1
    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemEndRspNative(BBS)Z

    goto :goto_0
.end method

.method public getItemAttributesInd(BJSB[I)V
    .locals 24
    .parameter "scope"
    .parameter "identifier"
    .parameter "uidCounter"
    .parameter "count"
    .parameter "attributeIds"

    .prologue
    .line 1287
    const/16 v19, 0x0

    .line 1288
    .local v19, i:B
    const/16 v18, 0x1

    .line 1289
    .local v18, error:B
    const/16 v23, 0x0

    .line 1293
    .local v23, status:B
    const/16 v21, 0x0

    .line 1295
    .local v21, num:I
    const-string v4, "EXT_AVRCP"

    const-string v5, "[BT][AVRCP] getItemAttributesInd scope:%d id:%d uid_counter:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    const/4 v4, 0x1

    move v5, v4

    :goto_1
    const/16 v4, 0xff

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 1299
    const-string v4, "EXT_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    add-int/lit8 v4, v19, 0x1

    int-to-byte v0, v4

    move/from16 v19, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1303
    :cond_2
    if-nez p5, :cond_3

    .line 1304
    const/16 p5, 0x3

    .line 1305
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 p6, v0

    .line 1306
    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, p6, v4

    .line 1307
    const/4 v4, 0x1

    const/4 v5, 0x2

    aput v5, p6, v4

    .line 1308
    const/4 v4, 0x2

    const/4 v5, 0x3

    aput v5, p6, v4

    .line 1311
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_7

    .line 1313
    move/from16 v0, p5

    new-array v10, v0, [Ljava/lang/String;

    .line 1314
    .local v10, sAttrArray:[Ljava/lang/String;
    move/from16 v0, p5

    new-array v8, v0, [I

    .line 1315
    .local v8, iAvailAttrId:[I
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_5

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget v5, p6, v19

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1, v5}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getElementAttribute(JI)Ljava/lang/String;

    move-result-object v22

    .line 1317
    .local v22, sAttrText:Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 1318
    aget v4, p6, v19

    aput v4, v8, v21

    .line 1319
    aput-object v22, v10, v21

    .line 1320
    add-int/lit8 v21, v21, 0x1

    .line 1315
    :cond_4
    add-int/lit8 v4, v19, 0x1

    int-to-byte v0, v4

    move/from16 v19, v0

    goto :goto_3

    .line 1323
    .end local v22           #sAttrText:Ljava/lang/String;
    :cond_5
    const-string v4, "EXT_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] getItemAttributesInd 0(playing) num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/16 v20, 0x0

    .local v20, loop:B
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 1325
    const-string v4, "EXT_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] getItemAttributesInd id:%d array:%d "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget v11, v8, v20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->UTF8_ARRAY:[S

    aget-short v11, v11, v20

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v10, v20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    add-int/lit8 v4, v20, 0x1

    int-to-byte v0, v4

    move/from16 v20, v0

    goto :goto_4

    .line 1329
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x4

    move/from16 v0, v21

    int-to-byte v7, v0

    sget-object v9, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->UTF8_ARRAY:[S

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemattributesRspNative(BBB[I[S[Ljava/lang/String;)Z

    move/from16 v13, v23

    .line 1366
    .end local v8           #iAvailAttrId:[I
    .end local v10           #sAttrArray:[Ljava/lang/String;
    .end local v20           #loop:B
    .end local v23           #status:B
    .local v13, status:B
    :goto_5
    return-void

    .line 1333
    .end local v13           #status:B
    .restart local v23       #status:B
    :cond_7
    const/4 v4, 0x3

    move/from16 v0, p1

    if-gt v0, v4, :cond_c

    .line 1334
    move/from16 v0, p5

    new-array v10, v0, [Ljava/lang/String;

    .line 1335
    .restart local v10       #sAttrArray:[Ljava/lang/String;
    move/from16 v0, p5

    new-array v8, v0, [I

    .line 1336
    .restart local v8       #iAvailAttrId:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->isItemExist(BJS)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1337
    const/16 v21, 0x0

    .line 1338
    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, p5

    if-ge v0, v1, :cond_9

    .line 1340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    aget v16, p6, v19

    move/from16 v12, p1

    move-wide/from16 v13, p2

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v16}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getItemAttribute(BJSI)Ljava/lang/String;

    move-result-object v22

    .line 1341
    .restart local v22       #sAttrText:Ljava/lang/String;
    if-eqz v22, :cond_8

    .line 1342
    aget v4, p6, v19

    aput v4, v8, v21

    .line 1343
    aput-object v22, v10, v21

    .line 1344
    add-int/lit8 v21, v21, 0x1

    .line 1338
    :cond_8
    add-int/lit8 v4, v19, 0x1

    int-to-byte v0, v4

    move/from16 v19, v0

    goto :goto_6

    .line 1347
    .end local v22           #sAttrText:Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    .line 1348
    const-string v4, "EXT_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] getItemAttributesInd num:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/16 v20, 0x0

    .restart local v20       #loop:B
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 1350
    const-string v4, "EXT_AVRCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BT][AVRCP] getItemAttributesInd id:%d array:%d "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget v11, v8, v20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->UTF8_ARRAY:[S

    aget-short v11, v11, v20

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v10, v20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    add-int/lit8 v4, v20, 0x1

    int-to-byte v0, v4

    move/from16 v20, v0

    goto :goto_7

    .line 1354
    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x4

    move/from16 v0, v21

    int-to-byte v7, v0

    sget-object v9, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->UTF8_ARRAY:[S

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemattributesRspNative(BBB[I[S[Ljava/lang/String;)Z

    move/from16 v13, v23

    .end local v23           #status:B
    .restart local v13       #status:B
    goto/16 :goto_5

    .line 1356
    .end local v13           #status:B
    .end local v20           #loop:B
    .restart local v23       #status:B
    :cond_b
    const/16 v18, 0x1

    .line 1357
    const/16 v13, 0x9

    .line 1358
    .end local v23           #status:B
    .restart local v13       #status:B
    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    new-array v15, v4, [I

    const/4 v4, 0x0

    new-array v0, v4, [S

    move-object/from16 v16, v0

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemattributesRspNative(BBB[I[S[Ljava/lang/String;)Z

    .line 1359
    const-string v4, "EXT_AVRCP"

    const-string v5, "[BT][AVRCP] getItemAttributesInd Item not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1362
    .end local v8           #iAvailAttrId:[I
    .end local v10           #sAttrArray:[Ljava/lang/String;
    .end local v13           #status:B
    .restart local v23       #status:B
    :cond_c
    const/16 v18, 0x1

    .line 1363
    const/16 v13, 0xa

    .line 1364
    .end local v23           #status:B
    .restart local v13       #status:B
    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    new-array v15, v4, [I

    const/4 v4, 0x0

    new-array v0, v4, [S

    move-object/from16 v16, v0

    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v17}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getItemattributesRspNative(BBB[I[S[Ljava/lang/String;)Z

    goto/16 :goto_5
.end method

.method public native getItemattributesRspNative(BBB[I[S[Ljava/lang/String;)Z
.end method

.method public getMediaPlayerList(II)V
    .locals 22
    .parameter "start"
    .parameter "end"

    .prologue
    .line 976
    const/4 v5, 0x0

    .line 978
    .local v5, status:B
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] getMediaPlayerList start:%d end:%d  [test:1]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v1, 0x10

    new-array v10, v1, [B

    .line 982
    .local v10, mask:[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 983
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 984
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 985
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 987
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 988
    const/4 v1, 0x5

    const/16 v2, -0x79

    aput-byte v2, v10, v1

    .line 989
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-byte v2, v10, v1

    .line 990
    const/4 v1, 0x7

    const/16 v2, 0x38

    aput-byte v2, v10, v1

    .line 992
    const/16 v1, 0x8

    const/4 v2, -0x5

    aput-byte v2, v10, v1

    .line 993
    const/16 v1, 0x9

    const/16 v2, -0x10

    aput-byte v2, v10, v1

    .line 994
    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 995
    const/16 v1, 0xb

    const/16 v2, 0x70

    aput-byte v2, v10, v1

    .line 997
    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 998
    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 999
    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 1000
    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v2, v10, v1

    .line 1002
    const/4 v8, 0x0

    .line 1003
    .local v8, type:B
    const/4 v9, 0x0

    .line 1004
    .local v9, subtype:B
    const/4 v6, 0x0

    .line 1005
    .local v6, uidCounter:S
    const/4 v7, 0x1

    .line 1008
    .local v7, playerId:S
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatus()B

    move-result v5

    .line 1010
    const/4 v1, 0x1

    move/from16 v0, p1

    if-le v0, v1, :cond_0

    .line 1012
    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v11, Ljava/lang/String;

    const-string v1, "Error"

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getMediaPlayerListRspNative(BBBBSSBB[BLjava/lang/String;)Z

    .line 1032
    :goto_0
    return-void

    .line 1014
    :cond_0
    if-ltz p1, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p2

    if-lt v0, v1, :cond_2

    .line 1016
    sub-int v1, p2, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1017
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v11, Ljava/lang/String;

    const-string v1, "Player1"

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getMediaPlayerListRspNative(BBBBSSBB[BLjava/lang/String;)Z

    goto :goto_0

    .line 1024
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v11, Ljava/lang/String;

    const-string v1, "Player0"

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getMediaPlayerListRspNative(BBBBSSBB[BLjava/lang/String;)Z

    goto :goto_0

    .line 1029
    :cond_2
    const/16 v12, 0x16

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    new-instance v21, Ljava/lang/String;

    const-string v1, "Error"

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, p0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    invoke-virtual/range {v11 .. v21}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getMediaPlayerListRspNative(BBBBSSBB[BLjava/lang/String;)Z

    goto :goto_0
.end method

.method public native getMediaPlayerListRspNative(BBBBSSBB[BLjava/lang/String;)Z
.end method

.method public getNowPlayingItemFileAttrRspNative(BBBISSLjava/lang/String;)Z
    .locals 1
    .parameter "error"
    .parameter "item"
    .parameter "attrIndex"
    .parameter "attrId"
    .parameter "charset"
    .parameter "len"
    .parameter "attrValue"

    .prologue
    .line 1510
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemFileAttrRspNative(BBBISSLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNowPlayingItemFileRspNative(BBBJBSSLjava/lang/String;)Z
    .locals 3
    .parameter "error"
    .parameter "item"
    .parameter "total"
    .parameter "uid"
    .parameter "mediatype"
    .parameter "charset"
    .parameter "len"
    .parameter "filename"

    .prologue
    .line 1521
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    .line 1522
    const-string v0, "EXT_AVRCP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][AVRCP] wrong mediatype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const/4 p6, 0x0

    .line 1528
    :cond_0
    invoke-virtual/range {p0 .. p9}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemFileRspNative(BBBJBSSLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getNowPlayingItemRspNative(BBS)Z
    .locals 1
    .parameter "error"
    .parameter "status"
    .parameter "uidCounter"

    .prologue
    .line 1532
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemEndRspNative(BBS)Z

    move-result v0

    return v0
.end method

.method public getNowPlayingItemStartRspNative()Z
    .locals 1

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemStartRspNative()Z

    move-result v0

    return v0
.end method

.method public getNowPlayingitemsList(IIB[I)V
    .locals 30
    .parameter "start"
    .parameter "end"
    .parameter "count"
    .parameter "attrIds"

    .prologue
    .line 1152
    const/16 v25, 0x0

    .line 1153
    .local v25, i:I
    const/16 v26, 0x0

    .line 1154
    .local v26, j:I
    const/16 v29, 0x0

    .line 1159
    .local v29, total:I
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getNowPlayingitemsList start:%d end:%d count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 1161
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p4, v25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getNowPlaying()[J

    move-result-object v28

    .line 1165
    .local v28, playlist:[J
    if-eqz v28, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 1167
    :cond_1
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getNowPlayingitemsList no playlist !"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemRspNative(BBS)Z

    .line 1230
    :goto_1
    return-void

    .line 1172
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemStartRspNative()Z

    .line 1173
    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, p1

    if-le v0, v2, :cond_3

    .line 1175
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getNowPlayingitemsList start:%d playlist:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v28

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemRspNative(BBS)Z

    goto :goto_1

    .line 1178
    :cond_3
    move-object/from16 v0, v28

    array-length v2, v0

    if-nez v2, :cond_4

    .line 1179
    const-string v24, "empty"

    .line 1180
    .local v24, songName:Ljava/lang/String;
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemRspNative(BBS)Z

    goto :goto_1

    .line 1185
    .end local v24           #songName:Ljava/lang/String;
    :cond_4
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v28

    array-length v3, v0

    sub-int v3, v3, p1

    if-le v2, v3, :cond_5

    .line 1186
    move-object/from16 v0, v28

    array-length v2, v0

    sub-int v29, v2, p1

    .line 1191
    :goto_2
    if-nez v29, :cond_6

    .line 1193
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] No data to return. list.length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemRspNative(BBS)Z

    goto/16 :goto_1

    .line 1188
    :cond_5
    sub-int v2, p2, p1

    add-int/lit8 v29, v2, 0x1

    goto :goto_2

    .line 1199
    :cond_6
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] list.length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getUidCounter()S

    move-result v6

    .line 1202
    .local v6, uidCounter:S
    move/from16 v25, p1

    :goto_3
    move/from16 v0, v25

    move/from16 v1, p2

    if-gt v0, v1, :cond_a

    move-object/from16 v0, v28

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_a

    .line 1204
    const/16 v27, 0x0

    .line 1205
    .local v27, num:I
    const/16 v26, 0x0

    :goto_4
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_8

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    const/4 v3, 0x3

    aget-wide v4, v28, v25

    aget v7, p4, v26

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getItemAttribute(BJSI)Ljava/lang/String;

    move-result-object v14

    .line 1209
    .local v14, attrValue:Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 1210
    const/4 v8, 0x0

    move/from16 v0, v25

    int-to-byte v9, v0

    move/from16 v0, v27

    int-to-byte v10, v0

    aget v11, p4, v26

    const/16 v12, 0x6a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v13, v2

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v14}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemFileAttrRspNative(BBBISSLjava/lang/String;)Z

    .line 1212
    add-int/lit8 v27, v27, 0x1

    .line 1205
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 1217
    .end local v14           #attrValue:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    const/4 v3, 0x3

    aget-wide v4, v28, v25

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getItemAttribute(BJSI)Ljava/lang/String;

    move-result-object v14

    .line 1219
    .restart local v14       #attrValue:Ljava/lang/String;
    move-object/from16 v24, v14

    .line 1220
    .restart local v24       #songName:Ljava/lang/String;
    if-nez v24, :cond_9

    .line 1221
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] Use \'ID:<id>\' as filename"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1224
    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v18, v0

    aget-wide v19, v28, v25

    const/16 v21, 0x0

    const/16 v22, 0x6a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v0, v2

    move/from16 v23, v0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v24}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemFileRspNative(BBBJBSSLjava/lang/String;)Z

    .line 1202
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 1228
    .end local v14           #attrValue:Ljava/lang/String;
    .end local v24           #songName:Ljava/lang/String;
    .end local v27           #num:I
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getNowPlayingItemRspNative(BBS)Z

    goto/16 :goto_1
.end method

.method public getPlayerAppAttrTextInd(B[B)V
    .locals 9
    .parameter "count"
    .parameter "attrIds"

    .prologue
    const/16 v5, 0x6a

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 613
    const-string v0, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getPlayerAppAttrTextInd count:%d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, i:B
    array-length v0, p2

    if-le p1, v0, :cond_0

    .line 617
    array-length v0, p2

    int-to-byte p1, v0

    .line 619
    :cond_0
    if-nez p1, :cond_2

    .line 620
    const-string v6, "empty"

    .line 621
    .local v6, sText:Ljava/lang/String;
    aget-byte v4, p2, v2

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappAttributeTextRspNative(BBBBILjava/lang/String;)Z

    .line 646
    .end local v6           #sText:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] getPlayerAppAttrTextInd done"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 623
    :cond_2
    if-ne v1, p1, :cond_4

    .line 624
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget-byte v3, p2, v8

    invoke-virtual {v0, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerAppAttrText(B)Ljava/lang/String;

    move-result-object v6

    .line 625
    .restart local v6       #sText:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 627
    const-string v6, "null"

    .line 628
    const-string v0, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getPlayerAppAttrTextInd attr_id:%d  is null"

    new-array v4, v1, [Ljava/lang/Object;

    aget-byte v7, p2, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    aget-byte v4, p2, v2

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappAttributeTextRspNative(BBBBILjava/lang/String;)Z

    goto :goto_0

    .line 633
    :cond_3
    const/4 v2, 0x0

    .line 634
    aget-byte v4, p2, v2

    move-object v0, p0

    move v1, v8

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappAttributeTextRspNative(BBBBILjava/lang/String;)Z

    goto :goto_0

    .line 637
    .end local v6           #sText:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget-byte v1, p2, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerAppAttrText(B)Ljava/lang/String;

    move-result-object v6

    .line 639
    .restart local v6       #sText:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 640
    const-string v6, ""

    .line 642
    :cond_5
    aget-byte v4, p2, v2

    move-object v0, p0

    move v1, v8

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappAttributeTextRspNative(BBBBILjava/lang/String;)Z

    .line 637
    add-int/lit8 v0, v2, 0x1

    int-to-byte v2, v0

    goto :goto_1
.end method

.method public getPlayerAppValueTextInd(BB[B)V
    .locals 9
    .parameter "attrId"
    .parameter "count"
    .parameter "values"

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 650
    const-string v0, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getPlayerAppValueTextInd attrId:%d count:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v6, ""

    .line 652
    .local v6, sText:Ljava/lang/String;
    const/4 v2, 0x0

    .line 653
    .local v2, i:B
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 654
    const-string v0, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getPlayerAppValueTextInd attrId:%d i:%d count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    aget-byte v5, p3, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    add-int/lit8 v0, v2, 0x1

    int-to-byte v2, v0

    goto :goto_0

    .line 657
    :cond_0
    array-length v0, p3

    if-le p2, v0, :cond_1

    .line 658
    array-length v0, p3

    int-to-byte p2, v0

    .line 660
    :cond_1
    if-nez p2, :cond_3

    .line 661
    aget-byte v5, p3, v2

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappValueTextRspNative(BBBBBLjava/lang/String;)Z

    .line 683
    :cond_2
    :goto_1
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] getPlayerAppAttrTextInd done"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 663
    :cond_3
    if-ne v1, p2, :cond_5

    .line 664
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget-byte v3, p3, v2

    invoke-virtual {v0, p1, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerAppValueText(BB)Ljava/lang/String;

    move-result-object v6

    .line 666
    if-nez v6, :cond_4

    .line 668
    aget-byte v5, p3, v2

    move-object v0, p0

    move v3, p2

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappValueTextRspNative(BBBBBLjava/lang/String;)Z

    goto :goto_1

    .line 671
    :cond_4
    aget-byte v5, p3, v2

    move-object v0, p0

    move v1, v7

    move v3, p2

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappValueTextRspNative(BBBBBLjava/lang/String;)Z

    goto :goto_1

    .line 674
    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_2

    .line 675
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget-byte v1, p3, v2

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerAppValueText(BB)Ljava/lang/String;

    move-result-object v6

    .line 676
    if-nez v6, :cond_6

    .line 677
    const-string v6, ""

    .line 679
    :cond_6
    aget-byte v5, p3, v2

    move-object v0, p0

    move v1, v7

    move v3, p2

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerappValueTextRspNative(BBBBBLjava/lang/String;)Z

    .line 674
    add-int/lit8 v0, v2, 0x1

    int-to-byte v2, v0

    goto :goto_2
.end method

.method public native getPlayerIdNative()I
.end method

.method public native getPlayerappAttributeTextRspNative(BBBBILjava/lang/String;)Z
.end method

.method public native getPlayerappValueTextRspNative(BBBBBLjava/lang/String;)Z
.end method

.method public getPlayerstatusInd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 801
    const/4 v2, 0x2

    .line 804
    .local v2, status:B
    const-string v3, "EXT_AVRCP"

    const-string v4, "[BT][AVRCP] get_playerstatus_ind "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatus()B

    move-result v2

    .line 807
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatusSongLength()I

    move-result v0

    .line 808
    .local v0, songLength:I
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getPlayerstatusSongPos()I

    move-result v1

    .line 809
    .local v1, songPosition:I
    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    .line 810
    invoke-virtual {p0, v7, v0, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerstatusRspNative(BIIB)Z

    .line 819
    :goto_0
    return-void

    .line 812
    :cond_0
    const-string v3, "EXT_AVRCP"

    const-string v4, "[BT][AVRCP] get_playerstatus_ind error:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v0, 0x0

    .line 815
    const/4 v1, 0x0

    .line 816
    const/4 v2, 0x0

    .line 817
    invoke-virtual {p0, v7, v0, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getPlayerstatusRspNative(BIIB)Z

    goto :goto_0
.end method

.method public native getPlayerstatusRspNative(BIIB)Z
.end method

.method public getSearchResultitemsList(IIB[I)V
    .locals 25
    .parameter "start"
    .parameter "end"
    .parameter "count"
    .parameter "attrIds"

    .prologue
    .line 1062
    const/16 v20, 0x0

    .line 1063
    .local v20, i:I
    const/16 v21, 0x0

    .line 1064
    .local v21, j:I
    const/16 v24, 0x0

    .line 1070
    .local v24, total:I
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] getSearchResultitemsList start:%d end:%d count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 1072
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-nez v2, :cond_1

    .line 1077
    const/4 v2, 0x1

    const/16 v3, 0x13

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    .line 1149
    :goto_1
    return-void

    .line 1081
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 1083
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto :goto_1

    .line 1087
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getSearchedList()[J

    move-result-object v23

    .line 1089
    .local v23, searchedList:[J
    if-eqz v23, :cond_3

    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, p1

    if-lt v0, v2, :cond_3

    .line 1091
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] getSearchResultitemsList start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Searchedlist.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto :goto_1

    .line 1098
    :cond_3
    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    array-length v2, v0

    if-nez v2, :cond_4

    .line 1100
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto :goto_1

    .line 1104
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemStartRspNative()Z

    .line 1105
    if-eqz v23, :cond_c

    .line 1106
    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, p2

    if-lt v0, v2, :cond_5

    .line 1107
    move-object/from16 v0, v23

    array-length v2, v0

    add-int/lit8 p2, v2, -0x1

    .line 1111
    :cond_5
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    array-length v3, v0

    sub-int v3, v3, p1

    if-le v2, v3, :cond_6

    .line 1112
    move-object/from16 v0, v23

    array-length v2, v0

    sub-int v24, v2, p1

    .line 1117
    :goto_2
    if-nez v24, :cond_7

    .line 1119
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] No data to return. list.length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto/16 :goto_1

    .line 1114
    :cond_6
    sub-int v2, p2, p1

    add-int/lit8 v24, v2, 0x1

    goto :goto_2

    .line 1124
    :cond_7
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] Searchedlist.length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    move/from16 v20, p1

    :goto_3
    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_b

    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_b

    .line 1126
    const/16 v22, 0x0

    .line 1127
    .local v22, numAttr:I
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    aget v3, p4, v21

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getSearchedItemAttribute(II)Ljava/lang/String;

    move-result-object v9

    .line 1129
    .local v9, sSongAttrText:Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 1130
    const/4 v3, 0x0

    move/from16 v0, v20

    int-to-byte v4, v0

    move/from16 v0, v22

    int-to-byte v5, v0

    aget v6, p4, v21

    const/16 v7, 0x6a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v8, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemFileAttrRspNative(BBBISSLjava/lang/String;)Z

    .line 1132
    add-int/lit8 v22, v22, 0x1

    .line 1127
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1136
    .end local v9           #sSongAttrText:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    const/4 v3, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getSearchedItemAttribute(II)Ljava/lang/String;

    move-result-object v19

    .line 1137
    .local v19, sSongNameText:Ljava/lang/String;
    if-nez v19, :cond_a

    .line 1138
    const-string v19, ""

    .line 1140
    :cond_a
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] got i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v23, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SongName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v11, 0x0

    move/from16 v0, v20

    int-to-byte v12, v0

    move/from16 v0, v24

    int-to-byte v13, v0

    aget-wide v14, v23, v20

    const/16 v16, 0x3

    const/16 v17, 0x6a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v0, v2

    move/from16 v18, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v19}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemFileRspNative(BBBJBSSLjava/lang/String;)Z

    .line 1125
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1144
    .end local v19           #sSongNameText:Ljava/lang/String;
    .end local v22           #numAttr:I
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto/16 :goto_1

    .line 1146
    :cond_c
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] No Searchedlist !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getSearchedItemRspNative(BBS)Z

    goto/16 :goto_1
.end method

.method public getSearchedItemFileAttrRspNative(BBBISSLjava/lang/String;)Z
    .locals 1
    .parameter "error"
    .parameter "item"
    .parameter "attrIndex"
    .parameter "attrId"
    .parameter "charset"
    .parameter "len"
    .parameter "attrValue"

    .prologue
    .line 1481
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemFileAttrRspNative(BBBISSLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSearchedItemFileRspNative(BBBJBSSLjava/lang/String;)Z
    .locals 1
    .parameter "error"
    .parameter "item"
    .parameter "total"
    .parameter "uid"
    .parameter "mediatype"
    .parameter "charset"
    .parameter "len"
    .parameter "filename"

    .prologue
    .line 1492
    invoke-virtual/range {p0 .. p9}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemFileRspNative(BBBJBSSLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSearchedItemRspNative(BBS)Z
    .locals 1
    .parameter "error"
    .parameter "status"
    .parameter "uidCounter"

    .prologue
    .line 1500
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemEndRspNative(BBS)Z

    move-result v0

    return v0
.end method

.method public getSearchedItemStartRspNative()Z
    .locals 1

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getFileSystemItemStartRspNative()Z

    move-result v0

    return v0
.end method

.method public native informBatteryStatusRspNative(B)Z
.end method

.method public informBatteryStatusofctInd(B)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 705
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] informBatteryStatusofctInd  status:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->informBatteryStatus(B)V

    .line 709
    invoke-virtual {p0, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->informBatteryStatusRspNative(B)Z

    .line 710
    return-void
.end method

.method public informDisplayCharsetInd(B[S)V
    .locals 9
    .parameter "count"
    .parameter "charset"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 688
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 689
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v3, "EXT_AVRCP"

    const-string v4, "[BT][AVRCP] informDisplayCharsetInd count:%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    if-ge v0, p1, :cond_0

    .line 692
    const-string v3, "[BT][AVRCP]  [%d]:%x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v7

    aget-short v5, p2, v0

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 694
    :cond_0
    const-string v3, "EXT_AVRCP"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->informDisplayCharset(B[S)Z

    move-result v1

    .line 697
    .local v1, ret:Z
    if-eqz v1, :cond_1

    .line 698
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->informDisplayCharsetRspNative(B)Z

    .line 702
    :goto_1
    return-void

    .line 700
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->informDisplayCharsetRspNative(B)Z

    goto :goto_1
.end method

.method public native informDisplayCharsetRspNative(B)Z
.end method

.method public listPlayerAppAttributeInd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 527
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] listPlayerAppAttributeInd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->listPlayerAppAttribute()[B

    move-result-object v0

    .line 530
    .local v0, ca:[B
    array-length v1, v0

    if-lez v1, :cond_0

    .line 531
    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v3, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->listPlayerappAttributeRspNative(BB[B)Z

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {p0, v1, v3, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->listPlayerappAttributeRspNative(BB[B)Z

    goto :goto_0
.end method

.method public listPlayerAppValueInd(B)V
    .locals 7
    .parameter "attrId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] listPlayerAppValueInd attrId:%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v1, p1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->listPlayerAppValue(B)[B

    move-result-object v0

    .line 542
    .local v0, ca:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 543
    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v5, p1, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->listPlayerappValuesRspNative(BBB[B)Z

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    new-array v1, v6, [B

    invoke-virtual {p0, v6, p1, v5, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->listPlayerappValuesRspNative(BBB[B)Z

    goto :goto_0
.end method

.method public native listPlayerappAttributeRspNative(BB[B)Z
.end method

.method public native listPlayerappValuesRspNative(BBB[B)Z
.end method

.method public native notificationAddressedPlayerChangedNative(BBSS)Z
.end method

.method public native notificationApplicationSettingChangedNative(BBB[B[B)Z
.end method

.method public native notificationAvailPlayersChangedNative(BB)Z
.end method

.method public notificationBatteryStatusChanged(BBB)V
    .locals 0
    .parameter "error"
    .parameter "isinterim"
    .parameter "status"

    .prologue
    .line 920
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationBatteryStatusChangedNative(BBB)Z

    .line 921
    return-void
.end method

.method public native notificationBatteryStatusChangedNative(BBB)Z
.end method

.method public native notificationNowPlayingChangedNative(BB)Z
.end method

.method public native notificationPlayPosChangedNative(BBI)Z
.end method

.method public native notificationPlayStatusChangedNative(BBB)Z
.end method

.method public notificationSystemStatusChanged(BBB)V
    .locals 0
    .parameter "error"
    .parameter "isinterim"
    .parameter "status"

    .prologue
    .line 924
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationSystemStatusChangedNative(BBB)Z

    .line 925
    return-void
.end method

.method public native notificationSystemStatusChangedNative(BBB)Z
.end method

.method public native notificationTrackChangedNative(BBJ)Z
.end method

.method public native notificationTrackReachedEndNative(BB)Z
.end method

.method public native notificationTrackReachedStartNative(BB)Z
.end method

.method public native notificationUIDSChangedNative(BBS)Z
.end method

.method public notificationVolumeChanged(BBB)V
    .locals 0
    .parameter "error"
    .parameter "isinterim"
    .parameter "volume"

    .prologue
    .line 928
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationVolumeChangedNative(BBB)Z

    .line 929
    return-void
.end method

.method public native notificationVolumeChangedNative(BBB)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 149
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] AVRCP Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] AVRCP Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mContext:Landroid/content/Context;

    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "EXT_AVRCP"

    const-string v1, "AVRCP initializeNativeObjectNative"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->initializeNativeObjectNative()V

    .line 163
    new-instance v0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    .line 164
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->enable()Z

    .line 166
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->init()V

    .line 172
    :cond_0
    sput-object p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpReceiver;->sAvrcpServer:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 178
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] AVRCP Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->disable()V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->cleanupNativeObjectNative()V

    .line 181
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->deinit()V

    .line 183
    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->deinit()V

    .line 188
    iput-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    .line 191
    :cond_1
    sput-object v2, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpReceiver;->sAvrcpServer:Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;

    .line 192
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 196
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] AVRCP Service onStartCommand flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 199
    .local v0, retCode:I
    iput p3, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStartId:I

    .line 200
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->parseIntent(Landroid/content/Intent;)V

    .line 210
    :goto_0
    return v0

    .line 204
    :cond_0
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] onStartCommand null intent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_1
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] onStartCommand retCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public passThroughKeyInd(IB)V
    .locals 5
    .parameter "keyvalue"
    .parameter "isPress"

    .prologue
    .line 443
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] pass_through_key key:%d isPress:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->passThroughKeyInd(IB)V

    .line 445
    return-void
.end method

.method public playItemsInd(BJS)V
    .locals 9
    .parameter "scope"
    .parameter "uid"
    .parameter "uidCounter"

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, status:B
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] playItemsInd idx:%d uid:%d player_id:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getUidCounter()S

    move-result v1

    if-ne p4, v1, :cond_2

    .line 1373
    if-ne p1, v7, :cond_0

    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->checkSongIdExisted(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] playItemsInd Warning try to add a not exist id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-virtual {p0, v8, v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->playItemsRspNative(BB)Z

    .line 1390
    :goto_0
    return-void

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->playItems(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1379
    invoke-virtual {p0, v6, v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->playItemsRspNative(BB)Z

    goto :goto_0

    .line 1382
    :cond_1
    const/16 v1, 0xe

    invoke-virtual {p0, v7, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->playItemsRspNative(BB)Z

    goto :goto_0

    .line 1387
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->playItemsRspNative(BB)Z

    goto :goto_0
.end method

.method public native playItemsRspNative(BB)Z
.end method

.method public playerAppCapabilitiesInd(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 511
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] playerAppCapabilitiesInd type:%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->playerAppCapabilities()[B

    move-result-object v0

    .line 514
    .local v0, ca:[B
    if-eqz v0, :cond_0

    .line 515
    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v5, v1, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getCapabilitiesRspNative(BB[B)Z

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x3

    new-array v2, v6, [B

    invoke-virtual {p0, v1, v5, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->getCapabilitiesRspNative(BB[B)Z

    goto :goto_0
.end method

.method public registerNotificationInd(BI)V
    .locals 11
    .parameter "eventId"
    .parameter "interval"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x3

    .line 822
    const-string v0, "EXT_AVRCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BT][AVRCP](test1) registerNotificationInd eventId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v7, 0x0

    .line 824
    .local v7, ret:Z
    const/4 v6, 0x0

    .line 826
    .local v6, ievent:I
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 829
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 855
    :goto_0
    if-nez v7, :cond_1

    .line 856
    const-string v0, "EXT_AVRCP"

    const-string v8, "[BT][AVRCP] registerNotificationInd fail and reject it"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    move v6, p1

    .line 859
    packed-switch v6, :pswitch_data_1

    .line 910
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] register fail but don\'t know how to reject it"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1
    :goto_1
    return-void

    .line 835
    :pswitch_0
    const/4 v7, 0x0

    .line 836
    goto :goto_0

    .line 842
    :pswitch_1
    const/4 v7, 0x0

    .line 843
    goto :goto_0

    .line 847
    :cond_2
    const/16 v0, 0xc

    if-ne v0, p1, :cond_3

    .line 849
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->registerNotification(BI)Z

    move-result v7

    goto :goto_0

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->registerNotification(BI)Z

    move-result v7

    goto :goto_0

    .line 861
    :pswitch_2
    invoke-virtual {p0, v10, v2, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationPlayStatusChangedNative(BBB)Z

    goto :goto_1

    .line 864
    :pswitch_3
    const-wide/32 v0, 0x12345678

    invoke-virtual {p0, v10, v2, v0, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationTrackChangedNative(BBJ)Z

    goto :goto_1

    .line 867
    :pswitch_4
    invoke-virtual {p0, v10, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationTrackReachedEndNative(BB)Z

    goto :goto_1

    .line 870
    :pswitch_5
    invoke-virtual {p0, v10, v2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationTrackReachedStartNative(BB)Z

    goto :goto_1

    .line 873
    :pswitch_6
    const/16 v0, 0x7b

    invoke-virtual {p0, v10, v2, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationPlayPosChangedNative(BBI)Z

    goto :goto_1

    .line 876
    :pswitch_7
    invoke-virtual {p0, v10, v2, v3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationBatteryStatusChangedNative(BBB)Z

    goto :goto_1

    .line 879
    :pswitch_8
    invoke-virtual {p0, v10, v2, v3}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationSystemStatusChangedNative(BBB)Z

    goto :goto_1

    .line 884
    :pswitch_9
    new-array v4, v3, [B

    .line 885
    .local v4, a:[B
    new-array v5, v3, [B

    .line 886
    .local v5, b:[B
    aput-byte v3, v4, v1

    .line 887
    aput-byte v10, v4, v2

    .line 888
    aput-byte v2, v5, v1

    .line 889
    aput-byte v2, v5, v2

    move-object v0, p0

    .line 891
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationApplicationSettingChangedNative(BBB[B[B)Z

    goto :goto_1

    .line 894
    .end local v4           #a:[B
    .end local v5           #b:[B
    :pswitch_a
    invoke-virtual {p0, v10, v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationNowPlayingChangedNative(BB)Z

    goto :goto_1

    .line 897
    :pswitch_b
    invoke-virtual {p0, v10, v10}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationAvailPlayersChangedNative(BB)Z

    goto :goto_1

    .line 900
    :pswitch_c
    invoke-virtual {p0, v10, v10, v1, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationAddressedPlayerChangedNative(BBSS)Z

    goto :goto_1

    .line 904
    :pswitch_d
    invoke-virtual {p0, v1, v2, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationUIDSChangedNative(BBS)Z

    goto :goto_1

    .line 907
    :pswitch_e
    invoke-virtual {p0, v10, v10, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->notificationVolumeChangedNative(BBB)Z

    goto :goto_1

    .line 829
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 859
    :pswitch_data_1
    .packed-switch 0x1
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
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] AVRCP run!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStopped:Z

    if-nez v0, :cond_1

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->listenerNativeEventLoop(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStopped:Z

    goto :goto_0

    .line 314
    :cond_1
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] AVRCP Int Thread stop!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public searchInd(SLjava/lang/String;)V
    .locals 5
    .parameter "charset"
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1394
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] searchInd charset:0x%x text:\'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v0, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->search(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v4, v4, v4}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->searchRspNative(BBSI)Z

    .line 1401
    :cond_0
    return-void
.end method

.method public native searchRspNative(BBSI)Z
.end method

.method public sendAvrcpKeyEventInd(IB)V
    .locals 5
    .parameter "keyvalue"
    .parameter "isPress"

    .prologue
    .line 453
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] sendAvrcpKeyEventInd key:%d isPress:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->sendAvrcpKeyEvent(IB)V

    .line 455
    return-void
.end method

.method public native sendKeyReqNative(I)Z
.end method

.method public setAbsoluteVolumeInd(BB)V
    .locals 7
    .parameter "index"
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 946
    and-int/lit8 v2, p2, 0x7f

    int-to-byte v1, v2

    .line 947
    .local v1, newVolume:B
    const-string v2, "EXT_AVRCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][AVRCP] set_absolute_volume_ind idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "newvol:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v2, v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->setAbsoluteVolume(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->getAbsoluteVolume()B

    move-result v0

    .line 952
    .local v0, lVol:B
    invoke-virtual {p0, v5, v5, p2}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setAbsoluteVolumeRspNative(BBB)Z

    .line 956
    .end local v0           #lVol:B
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0, v6, v6, v5}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setAbsoluteVolumeRspNative(BBB)Z

    goto :goto_0
.end method

.method public native setAbsoluteVolumeRspNative(BBB)Z
.end method

.method public setAddressedplayerInd(S)V
    .locals 6
    .parameter "playerId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 959
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] set_addressedplayer_ind playerId:%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-ne p1, v5, :cond_0

    .line 961
    iput-short p1, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S

    .line 962
    const/4 v0, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setAddressedplayerRspNative(BB)Z

    .line 968
    :goto_0
    return-void

    .line 965
    :cond_0
    const/16 v0, 0x11

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setAddressedplayerRspNative(BB)Z

    goto :goto_0
.end method

.method public native setAddressedplayerRspNative(BB)Z
.end method

.method public setBrowsedplayerInd(S)V
    .locals 22
    .parameter "playerId"

    .prologue
    .line 1233
    const/16 v19, 0x0

    .line 1234
    .local v19, paths:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1235
    .local v17, depth:I
    const/16 v20, 0x0

    .line 1236
    .local v20, status:B
    const/16 v21, 0x0

    .line 1237
    .local v21, uidCounter:S
    const/16 v18, 0x0

    .line 1238
    .local v18, num:I
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] setBrowsedplayerInd player_id:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    .line 1242
    const-string v1, "EXT_AVRCP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][AVRCP] invalid player id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x6a

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setBrowsedplayerRspNative(BBSISB[Ljava/lang/String;)Z

    move/from16 v5, v18

    .end local v18           #num:I
    .local v5, num:I
    move/from16 v4, v21

    .end local v21           #uidCounter:S
    .local v4, uidCounter:S
    move-object/from16 v8, v19

    .line 1271
    .end local v19           #paths:[Ljava/lang/String;
    .local v8, paths:[Ljava/lang/String;
    :goto_0
    return-void

    .line 1248
    .end local v4           #uidCounter:S
    .end local v5           #num:I
    .end local v8           #paths:[Ljava/lang/String;
    .restart local v18       #num:I
    .restart local v19       #paths:[Ljava/lang/String;
    .restart local v21       #uidCounter:S
    :cond_0
    move-object/from16 v0, p0

    iget-short v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mCurPlayerId:S

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v1, :cond_1

    .line 1249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->onSelect()V

    .line 1252
    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x6a

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setBrowsedplayerRspNative(BBSISB[Ljava/lang/String;)Z

    move/from16 v5, v18

    .end local v18           #num:I
    .restart local v5       #num:I
    move/from16 v4, v21

    .end local v21           #uidCounter:S
    .restart local v4       #uidCounter:S
    move-object/from16 v8, v19

    .end local v19           #paths:[Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    goto :goto_0

    .line 1255
    .end local v4           #uidCounter:S
    .end local v5           #num:I
    .end local v8           #paths:[Ljava/lang/String;
    .restart local v18       #num:I
    .restart local v19       #paths:[Ljava/lang/String;
    .restart local v21       #uidCounter:S
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    if-eqz v1, :cond_2

    .line 1257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getUidCounter()S

    move-result v4

    .line 1258
    .end local v21           #uidCounter:S
    .restart local v4       #uidCounter:S
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getCurPathItems()I

    move-result v5

    .line 1259
    .end local v18           #num:I
    .restart local v5       #num:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getCurPathDepth()B

    move-result v17

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mBrowserAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpBrowserAdapter;->getCurPaths()[Ljava/lang/String;

    move-result-object v8

    .line 1261
    .end local v19           #paths:[Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    const-string v1, "EXT_AVRCP"

    const-string v2, "[BT][AVRCP] browserAdapter uid_counter:%d num:%d depth:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x6a

    move/from16 v0, v17

    int-to-byte v7, v0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setBrowsedplayerRspNative(BBSISB[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1267
    .end local v4           #uidCounter:S
    .end local v5           #num:I
    .end local v8           #paths:[Ljava/lang/String;
    .restart local v18       #num:I
    .restart local v19       #paths:[Ljava/lang/String;
    .restart local v21       #uidCounter:S
    :cond_2
    const/16 v10, 0x13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6a

    const/4 v15, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v16}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setBrowsedplayerRspNative(BBSISB[Ljava/lang/String;)Z

    move/from16 v5, v18

    .end local v18           #num:I
    .restart local v5       #num:I
    move/from16 v4, v21

    .end local v21           #uidCounter:S
    .restart local v4       #uidCounter:S
    move-object/from16 v8, v19

    .end local v19           #paths:[Ljava/lang/String;
    .restart local v8       #paths:[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public native setBrowsedplayerRspNative(BBSISB[Ljava/lang/String;)Z
.end method

.method public setPlayerAppValueInd(B[B[B)V
    .locals 9
    .parameter "count"
    .parameter "attrIds"
    .parameter "values"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, ok:Z
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] setPlayerAppValueInd count:%d length:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    if-ge v0, p1, :cond_0

    array-length v2, p2

    if-ge v0, v2, :cond_0

    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 601
    const-string v2, "EXT_AVRCP"

    const-string v3, "[BT][AVRCP] setPlayerAppValueInd i:%d id:%d value:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    aget-byte v5, p2, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    aget-byte v5, p3, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mAdapter:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    aget-byte v3, p2, v0

    aget-byte v4, p3, v0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->setPlayerAppValue(BB)Z

    move-result v1

    .line 600
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0

    .line 604
    :cond_0
    if-eqz v1, :cond_1

    .line 605
    invoke-virtual {p0, v6}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setPlayerappValueRspNative(B)Z

    .line 610
    :goto_1
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0, v7}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->setPlayerappValueRspNative(B)Z

    goto :goto_1
.end method

.method public native setPlayerappValueRspNative(B)Z
.end method

.method shutdownIndThread()V
    .locals 2

    .prologue
    .line 321
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] +shutdownIndThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->mStopped:Z

    .line 323
    invoke-direct {p0}, Lcom/mediatek/bluetooth/avrcp/BluetoothAvrcpService;->wakeupListenerNative()V

    .line 327
    const-string v0, "EXT_AVRCP"

    const-string v1, "[BT][AVRCP] +shutdownIndThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public native testparmnum(BBBBBBBBBBBB)Z
.end method
