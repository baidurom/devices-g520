.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$4;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field static BROWSER_PACKAGE_NAME:Ljava/lang/String; = null

.field static final CHOICE:Ljava/lang/String; = "choice"

.field static final CMD_MSG:Ljava/lang/String; = "cmd message"

.field static final CONFIRMATION:Ljava/lang/String; = "confirm"

.field static final DEV_ID_DISPLAY:I = 0x2

.field static final DEV_ID_EARPIECE:I = 0x3

.field static final DEV_ID_KEYPAD:I = 0x1

.field static final DEV_ID_NETWORK:I = 0x83

.field static final DEV_ID_TERMINAL:I = 0x82

.field static final DEV_ID_UICC:I = 0x81

.field static final EVDL_ID:Ljava/lang/String; = "downLoad event id"

.field static final EVDL_ID_BROWSER_TERMINATION:I = 0x8

.field static final EVDL_ID_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVDL_ID_LANGUAGE_SELECT:I = 0x7

.field static final EVDL_ID_USER_ACTIVITY:I = 0x4

.field static final HELP:Ljava/lang/String; = "help"

.field static final INPUT:Ljava/lang/String; = "input"

.field private static final INPUT_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.StkInputActivity"

.field private static final LOGTAG:Ljava/lang/String; = "Stk-SAS "

.field private static final MENU_ACTIVITY_NAME:Ljava/lang/String; = "com.android.stk.AliasStkMenuActivity"

.field static final MENU_SELECTION:Ljava/lang/String; = "menu selection"

.field static final NO:I = 0x0

.field static final OPCODE:Ljava/lang/String; = "op"

.field static final OP_BOOT_COMPLETED:I = 0x5

.field static final OP_CMD:I = 0x1

.field private static final OP_DELAYED_MSG:I = 0x7

.field static final OP_END_SESSION:I = 0x4

.field static final OP_EVENT_DOWNLOAD:I = 0x6

.field static final OP_LAUNCH_APP:I = 0x3

.field static final OP_RESPONSE:I = 0x2

.field private static final OP_RESPONSE_IDLE_TEXT:I = 0x8

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final RES_ID:Ljava/lang/String; = "response id"

.field static final RES_ID_BACKWARD:I = 0x15

.field static final RES_ID_CHOICE:I = 0xf

.field static final RES_ID_CONFIRM:I = 0xd

.field static final RES_ID_DONE:I = 0xe

.field static final RES_ID_END_SESSION:I = 0x16

.field static final RES_ID_EXIT:I = 0x17

.field static final RES_ID_INPUT:I = 0xc

.field static final RES_ID_MENU_SELECTION:I = 0xb

.field static final RES_ID_TIMEOUT:I = 0x14

.field static final SETUP_CALL_END_CALL_1:I = 0x4

.field static final SETUP_CALL_END_CALL_2:I = 0x5

.field static final SETUP_CALL_HOLD_CALL_1:I = 0x2

.field static final SETUP_CALL_HOLD_CALL_2:I = 0x3

.field static final SETUP_CALL_NO_CALL_1:I = 0x0

.field static final SETUP_CALL_NO_CALL_2:I = 0x1

.field private static final STK_NOTIFICATION_ID:I = 0x14d

.field static final STK_TITLE_KEY:Ljava/lang/String; = "gsm.setupmenu.title"

.field static final STK_TITLE_KEY2:Ljava/lang/String; = "gsm.setupmenu.title2"

.field private static final SUPP_SERVICE_FAILED:I = 0x66

.field static final TAG:Ljava/lang/String; = "STK_LOG"

.field static final YES:I = 0x1

.field private static mSetUpMenuHandled:Z

.field private static mSetupMenuCalled:Z

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private isSimReady:Z

.field private isUserAccessed:Z

.field private lastSelectedItem:Ljava/lang/String;

.field private launchBrowser:Z

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallHandler:Landroid/os/Handler;

.field private mCmdInProgress:Z

.field private mCmdsQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/stk/StkAppService$DelayedCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDialogIsVisible:Z

.field private mInputIsVisible:Z

.field private mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMenuIsVisible:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPhone:Lcom/android/internal/telephony/Phone;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSetupCallInProcess:Z

.field private mStkService:Lcom/android/internal/telephony/cat/AppInterface;

.field private responseNeeded:Z

.field serviceThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 138
    sput-boolean v1, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    .line 139
    sput-boolean v1, Lcom/android/stk/StkAppService;->mSetUpMenuHandled:Z

    .line 1651
    const-string v0, "com.android.browser"

    sput-object v0, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 123
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 124
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 125
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 126
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 127
    iput-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mInputIsVisible:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mDialogIsVisible:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 133
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 134
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 135
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 136
    iput-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 217
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->isUserAccessed:Z

    .line 218
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->isSimReady:Z

    .line 220
    iput-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 1088
    new-instance v0, Lcom/android/stk/StkAppService$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$2;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    .line 1205
    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 2017
    new-instance v0, Lcom/android/stk/StkAppService$3;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$3;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkAppService;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/stk/StkAppService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleEventDownload(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleDelayedCmd()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleIdleTextResponse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processPhoneStateChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/stk/StkAppService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processSuppServiceFailed(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->isSimReady:Z

    return p1
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    sput-boolean p0, Lcom/android/stk/StkAppService;->mSetUpMenuHandled:Z

    return p0
.end method

.method static synthetic access$2302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    sput-boolean p0, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/stk/StkAppService;)Lcom/android/internal/telephony/cat/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/stk/StkAppService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/stk/StkAppService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    return p1
.end method

.method private callDelayedMsg()V
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 578
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    return-void
.end method

.method private canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 1556
    if-nez p1, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return v0

    .line 1560
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canShowTextDialog? mMenuIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDialogIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mDialogIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1562
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-eq v1, v0, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->isIdleScreen(Landroid/content/Context;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1570
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mInputIsVisible:Z

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mDialogIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 1574
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeMenuStateToMain()V
    .locals 2

    .prologue
    .line 2061
    const-string v0, "Stk-SAS "

    const-string v1, "call changeMenuStateToMain"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 2063
    const-string v0, "Stk-SAS "

    const-string v1, "changeMenuStateToMain: mMainCmd is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2067
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 2069
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 2072
    :cond_1
    return-void
.end method

.method private correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1974
    sget-object v0, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1981
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1982
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1985
    :cond_1
    :goto_0
    return-void

    .line 1976
    :pswitch_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1977
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1974
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method private displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 807
    move-object v0, p1

    .line 808
    .local v0, dispTxt:Lcom/android/internal/telephony/cat/TextMessage;
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 809
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 811
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 812
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 820
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 822
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 824
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 827
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0
.end method

.method private finishMenuActivity()V
    .locals 4

    .prologue
    .line 1496
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.AliasStkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    const/high16 v0, 0x1400

    .line 1501
    .local v0, intentFlags:I
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1502
    const-string v2, "STATE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1504
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1505
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1506
    return-void
.end method

.method private getBackgroundCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1111
    .local v0, bg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1114
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1103
    .local v0, fg:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1989
    const-string v0, ""

    .line 1990
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2001
    :goto_0
    :pswitch_0
    return-object v0

    .line 1992
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1993
    goto :goto_0

    .line 1995
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1996
    goto :goto_0

    .line 1998
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1990
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I
    .locals 3
    .parameter "userAction"

    .prologue
    const/4 v1, 0x0

    .line 1491
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    const/4 v3, 0x0

    .line 1948
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1949
    .local v2, menu:Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_1

    .line 1957
    :cond_0
    :goto_0
    return-object v3

    .line 1952
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 1953
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget v4, v1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v4, p1, :cond_2

    .line 1954
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    .line 285
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 291
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 12
    .parameter "cmdMsg"

    .prologue
    .line 611
    invoke-static {}, Lcom/android/stk/StkAppInstaller;->getInstance()Lcom/android/stk/StkAppInstaller;

    move-result-object v1

    .line 612
    .local v1, appInstaller:Lcom/android/stk/StkAppInstaller;
    if-nez p1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iput-object p1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 617
    const/4 v9, 0x1

    .line 618
    .local v9, waitForUsersResponse:Z
    const/4 v0, 0x0

    .line 620
    .local v0, additionalInfo:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    sget-object v10, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 797
    :cond_2
    :goto_1
    :pswitch_0
    if-nez v9, :cond_0

    .line 798
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eqz v10, :cond_10

    .line 799
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 624
    const-string v10, "Stk-SAS "

    const-string v11, "[Handle Command][DISPLAY_TEXT][Can not handle currently]"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 626
    .local v4, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 627
    const/4 v10, 0x1

    new-array v0, v10, [B

    .line 628
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput-byte v11, v0, v10

    .line 629
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 630
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 634
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    .line 635
    .local v3, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v10, v3, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    iput-boolean v10, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    .line 636
    iget-boolean v10, p0, Lcom/android/stk/StkAppService;->responseNeeded:Z

    if-nez v10, :cond_4

    .line 637
    const/4 v9, 0x0

    .line 638
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 639
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 640
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 642
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_4
    iget-object v10, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 643
    iget-object v10, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v10, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 651
    :goto_2
    const/4 v10, 0x2

    new-array v8, v10, [B

    fill-array-data v8, :array_0

    .line 654
    .local v8, target:[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 655
    .local v6, strTarget:Ljava/lang/String;
    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, strLine:Ljava/lang/String;
    iget-object v10, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v10, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, strText:Ljava/lang/String;
    iput-object v7, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 659
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchTextDialog()V

    goto :goto_1

    .line 644
    .end local v5           #strLine:Ljava/lang/String;
    .end local v6           #strTarget:Ljava/lang/String;
    .end local v7           #strText:Ljava/lang/String;
    .end local v8           #target:[B
    :cond_5
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v10, :cond_6

    .line 645
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v10, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 648
    :cond_6
    const-string v10, ""

    iput-object v10, v3, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 662
    .end local v3           #msg:Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_2
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 663
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 665
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 666
    const-string v10, "Stk-SAS "

    const-string v11, "[Handle Command][SELECT_ITEM][Can not handle currently]"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 668
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 669
    const/4 v10, 0x1

    new-array v0, v10, [B

    .line 670
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput-byte v11, v0, v10

    .line 671
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 672
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 676
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_7
    iget-boolean v10, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    iget-boolean v10, p0, Lcom/android/stk/StkAppService;->isUserAccessed:Z

    if-nez v10, :cond_9

    .line 677
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    goto/16 :goto_1

    .line 679
    :cond_9
    const-string v10, "Stk-SAS "

    const-string v11, "can not show select_item now"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 681
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 682
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 683
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->changeMenuStateToMain()V

    goto/16 :goto_1

    .line 687
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :pswitch_3
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    .line 688
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 689
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 690
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 691
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->removeMenu()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 692
    const-string v10, "Uninstall App"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    .line 694
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 695
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 700
    :goto_3
    iget-boolean v10, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    if-eqz v10, :cond_a

    .line 701
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 706
    :cond_a
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isOrangeSupport()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 707
    const/4 v2, 0x0

    .line 708
    .local v2, appName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v10, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 709
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_c

    .line 710
    :cond_b
    const-string v10, "appName is invalid valule"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/cat/AppInterface;->getMenuTitleFromEf()Ljava/lang/String;

    move-result-object v2

    .line 716
    :cond_c
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 717
    const-string v10, "update appName"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->updateAppName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 697
    .end local v2           #appName:Ljava/lang/String;
    :cond_d
    const-string v10, "Install App"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_3

    .line 727
    :pswitch_4
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 728
    const-string v10, "Stk-SAS "

    const-string v11, "[Handle Command][GET_INPUT][Can not handle currently]"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 730
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 731
    const/4 v10, 0x1

    new-array v0, v10, [B

    .line 732
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput-byte v11, v0, v10

    .line 733
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 734
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_0

    .line 737
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_e
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchInputActivity()V

    goto/16 :goto_1

    .line 740
    :pswitch_5
    const/4 v9, 0x0

    .line 741
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchIdleText()V

    goto/16 :goto_1

    .line 747
    :pswitch_6
    const/4 v9, 0x0

    .line 748
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 751
    :pswitch_7
    const-string v10, "[Handle Command][LAUNCH_BROWSER]"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v10

    iput-object v10, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 753
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/stk/StkAppService;->isBrowserLaunched(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 755
    sget-object v10, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v11, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v11, v11, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 765
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 757
    :pswitch_8
    const-string v10, "[Handle Command][LAUNCH_BROWSER][Should not launch browser]"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    new-instance v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 760
    .restart local v4       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 761
    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 762
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v10, v4}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 770
    .end local v4           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    :cond_f
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_1

    .line 774
    :pswitch_9
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processSetupCall()V

    goto/16 :goto_1

    .line 777
    :pswitch_a
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchToneDialog()V

    goto/16 :goto_1

    .line 785
    :pswitch_b
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processOpenChannel()V

    goto/16 :goto_1

    .line 792
    :pswitch_c
    const/4 v9, 0x0

    .line 793
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchEventMessage()V

    goto/16 :goto_1

    .line 801
    :cond_10
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto/16 :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 651
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 755
    nop

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;)V
    .locals 13
    .parameter "args"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1325
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v9, :cond_0

    .line 1476
    :goto_0
    return-void

    .line 1328
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1331
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v9, "help"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1333
    .local v3, helpRequired:Z
    const-string v9, "response id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1472
    :pswitch_0
    const-string v9, "Unknown result id"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1335
    :pswitch_1
    const-string v9, "RES_ID_MENU_SELECTION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1336
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v9}, Lcom/android/stk/StkAppService;->isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1337
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f06002a

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 1339
    .local v7, toast:Landroid/widget/Toast;
    const/16 v9, 0x50

    invoke-virtual {v7, v9, v11, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 1340
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1344
    .end local v7           #toast:Landroid/widget/Toast;
    :cond_1
    const-string v9, "menu selection"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1345
    .local v5, menuSelection:I
    sget-object v9, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_0

    .line 1475
    .end local v5           #menuSelection:I
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v9, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 1348
    .restart local v5       #menuSelection:I
    :sswitch_0
    sput-boolean v12, Lcom/android/stk/StkAppService;->mSetUpMenuHandled:Z

    .line 1350
    :sswitch_1
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    .end local v6           #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1351
    .restart local v6       #resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    invoke-direct {p0, v5}, Lcom/android/stk/StkAppService;->getItemName(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 1352
    if-eqz v3, :cond_3

    .line 1353
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1357
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_1

    .line 1355
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_2

    .line 1362
    .end local v5           #menuSelection:I
    :pswitch_2
    const-string v9, "RES_ID_INPUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1363
    const-string v9, "input"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1364
    .local v4, input:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 1365
    .local v1, cmdInput:Lcom/android/internal/telephony/cat/Input;
    if-eqz v1, :cond_4

    iget-boolean v9, v1, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v9, :cond_4

    .line 1366
    const-string v9, "YES"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1368
    .local v8, yesNoSelection:Z
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto :goto_1

    .line 1370
    .end local v8           #yesNoSelection:Z
    :cond_4
    if-eqz v3, :cond_5

    .line 1371
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 1373
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1374
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_1

    .line 1379
    .end local v1           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    .end local v4           #input:Ljava/lang/String;
    :pswitch_3
    const-string v9, "RES_ID_CONFIRM"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1380
    const-string v9, "confirm"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1381
    .local v2, confirmed:Z
    sget-object v9, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    .line 1383
    :sswitch_2
    const-string v9, "RES_ID_CONFIRM SET_UP_MENU"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1386
    :sswitch_3
    if-eqz v2, :cond_6

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    :cond_6
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 1390
    :sswitch_4
    if-eqz v2, :cond_7

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1392
    if-eqz v2, :cond_2

    .line 1393
    iput-boolean v12, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 1394
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    iput-object v9, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_1

    .line 1390
    :cond_7
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 1398
    :sswitch_5
    if-eqz v2, :cond_8

    .line 1399
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processSetupCallResponse()V

    goto/16 :goto_0

    .line 1403
    :cond_8
    iput-boolean v11, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 1404
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1405
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 1409
    :sswitch_6
    if-eqz v2, :cond_9

    .line 1410
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processOpenChannelResponse()V

    goto/16 :goto_0

    .line 1415
    :cond_9
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1416
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_1

    .line 1421
    .end local v2           #confirmed:Z
    :pswitch_4
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1424
    :pswitch_5
    const-string v9, "RES_ID_BACKWARD"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    sget-object v9, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v10, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 1432
    const-string v9, "RES_ID_BACKWARD - not OPEN_CHANNEL"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1427
    :pswitch_6
    const-string v9, "RES_ID_BACKWARD - OPEN_CHANNEL"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1428
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1438
    :pswitch_7
    const-string v9, "RES_ID_END_SESSION"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1442
    :pswitch_8
    const-string v9, "RES_ID_TIMEOUT"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1443
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1451
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v9

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v10

    if-ne v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v9, :cond_a

    .line 1454
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1456
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1460
    :pswitch_9
    const-string v9, "choice"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1461
    .local v0, choice:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User Choice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1462
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_1

    .line 1467
    :pswitch_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1464
    :pswitch_b
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_1

    .line 1333
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 1345
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch

    .line 1381
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_2
        0xa -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x12 -> :sswitch_6
    .end sparse-switch

    .line 1425
    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_6
    .end packed-switch

    .line 1462
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private handleDelayedCmd()V
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 564
    .local v0, cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 573
    .end local v0           #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 566
    .restart local v0       #cmd:Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    goto :goto_0

    .line 569
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleSessionEnd()V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleEventDownload(Landroid/os/Bundle;)V
    .locals 13
    .parameter "args"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1267
    const-string v8, "downLoad event id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1268
    .local v2, eventId:I
    const/4 v7, 0x0

    .line 1269
    .local v7, sourceId:I
    const/4 v1, 0x0

    .line 1270
    .local v1, destinationId:I
    const/4 v0, 0x0

    .line 1272
    .local v0, additionalInfo:[B
    const/4 v5, 0x0

    .line 1275
    .local v5, oneShot:Z
    new-instance v6, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v6, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 1276
    .local v6, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    packed-switch v2, :pswitch_data_0

    .line 1316
    :goto_0
    :pswitch_0
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 1317
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 1318
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1319
    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 1320
    const-string v8, "onEventDownload"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1321
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v8, v6}, Lcom/android/internal/telephony/cat/AppInterface;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1322
    return-void

    .line 1278
    :pswitch_1
    const/16 v7, 0x82

    .line 1279
    const/16 v1, 0x81

    .line 1280
    const/4 v5, 0x1

    .line 1281
    goto :goto_0

    .line 1283
    :pswitch_2
    const/4 v7, 0x2

    .line 1284
    const/16 v1, 0x81

    .line 1285
    const/4 v5, 0x1

    .line 1286
    goto :goto_0

    .line 1288
    :pswitch_3
    const/16 v7, 0x82

    .line 1289
    const/16 v1, 0x81

    .line 1290
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1292
    const/16 v8, -0x53

    aput-byte v8, v0, v9

    .line 1295
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1296
    .local v4, languageInfo:Ljava/lang/String;
    aput-byte v11, v0, v10

    .line 1297
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1298
    .local v3, language:[B
    aget-byte v8, v3, v9

    aput-byte v8, v0, v11

    .line 1299
    aget-byte v8, v3, v10

    aput-byte v8, v0, v12

    .line 1301
    const/4 v5, 0x0

    .line 1302
    goto :goto_0

    .line 1304
    .end local v3           #language:[B
    .end local v4           #languageInfo:Ljava/lang/String;
    :pswitch_4
    const/16 v7, 0x82

    .line 1305
    const/16 v1, 0x81

    .line 1307
    new-array v0, v12, [B

    .line 1308
    const/16 v8, -0x4c

    aput-byte v8, v0, v9

    .line 1309
    aput-byte v10, v0, v10

    .line 1310
    aput-byte v9, v0, v11

    .line 1311
    const/4 v5, 0x0

    .line 1312
    goto :goto_0

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleIdleTextResponse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1677
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1678
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1679
    new-array v0, v3, [B

    .line 1680
    .local v0, additionalInfo:[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 1681
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 1682
    const-string v2, "handleResponseOk "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1683
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1684
    return-void
.end method

.method private handleSessionEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 583
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 584
    iput-object v3, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    .line 587
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    if-eqz v0, :cond_1

    .line 591
    sget-boolean v0, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 592
    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V

    .line 598
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 599
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->callDelayedMsg()V

    .line 604
    :goto_1
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    if-eqz v0, :cond_2

    .line 605
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->launchBrowser:Z

    .line 606
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 608
    :cond_2
    return-void

    .line 595
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->finishMenuActivity()V

    goto :goto_0

    .line 601
    :cond_4
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    goto :goto_1
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2114
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 2115
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Stk App Service"

    invoke-direct {v1, v4, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 2116
    iget-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2117
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 2118
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2120
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 2122
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2123
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2124
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2125
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 2126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2128
    .local v0, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2129
    const-string v1, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2130
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2131
    return-void
.end method

.method private is1A1H()Z
    .locals 4

    .prologue
    .line 1118
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1119
    .local v1, fgState:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getBackgroundCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1120
    .local v0, bgState:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    .line 1121
    const-string v2, "STK_LOG"

    const-string v3, "1A1H"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v2, 0x1

    .line 1124
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBipCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 2046
    sget-object v0, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 2056
    const-string v0, "non-BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2057
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2052
    :sswitch_0
    const-string v0, "BIP command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    const/4 v0, 0x1

    goto :goto_0

    .line 2046
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method private isBusyOnCall()Z
    .locals 3

    .prologue
    .line 2080
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2082
    .local v0, s:Lcom/android/internal/telephony/Phone$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBusyOnCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2083
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "cmd"

    .prologue
    .line 545
    sget-object v0, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 558
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 555
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isOrangeSupport()Z
    .locals 2

    .prologue
    .line 2089
    const-string v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2090
    .local v0, optr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "OP03"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2091
    const/4 v1, 0x1

    .line 2094
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSetupMenuCalled()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/stk/StkAppService;->mSetupMenuCalled:Z

    return v0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 6
    .parameter "settings"

    .prologue
    const/high16 v5, 0x400

    .line 1762
    if-nez p1, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1766
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1767
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, data:Landroid/net/Uri;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings.url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1774
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1775
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1791
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1793
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1794
    sget-object v3, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1809
    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1815
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1816
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1777
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1778
    .local v2, modifiedUrl:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifiedUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1779
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1780
    goto :goto_1

    .line 1789
    .end local v2           #modifiedUrl:Ljava/lang/String;
    :cond_3
    const-string v3, "http://google.com/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1796
    :pswitch_0
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1800
    :pswitch_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1804
    :pswitch_2
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1794
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchCallMsg()V
    .locals 3

    .prologue
    .line 1849
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1850
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1853
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1854
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1878
    :cond_0
    :goto_0
    return-void

    .line 1861
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1862
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1864
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1866
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1869
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1750
    iget-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1751
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->correctTextMessage(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1752
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1753
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1757
    const-string v1, "TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1758
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1759
    return-void
.end method

.method private launchEventMessage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1693
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1694
    .local v2, msg:Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    new-instance v3, Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1698
    .local v3, toast:Landroid/widget/Toast;
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1700
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1701
    .local v5, v:Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1703
    .local v4, tv:Landroid/widget/TextView;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1705
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 1706
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1710
    :goto_1
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_2

    .line 1711
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 1712
    sget-object v6, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1743
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1744
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 1745
    const/16 v6, 0x50

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 1746
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1708
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1714
    :pswitch_1
    const v6, 0x7f06000a

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1717
    :pswitch_2
    const v6, 0x7f060009

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1720
    :pswitch_3
    const v6, 0x7f060007

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1723
    :pswitch_4
    const v6, 0x7f060008

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1726
    :pswitch_5
    const v6, 0x7f06001b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1729
    :pswitch_6
    const v6, 0x7f06001c

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1732
    :pswitch_7
    const v6, 0x7f06001d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1735
    :pswitch_8
    const v6, 0x7f06001e

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1739
    :cond_4
    iget-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private launchIdleText()V
    .locals 10

    .prologue
    const v9, 0x108050a

    const v8, 0x1020006

    const/4 v7, 0x0

    const/16 v6, 0x14d

    .line 1881
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1882
    .local v1, msg:Lcom/android/internal/telephony/cat/TextMessage;
    if-nez v1, :cond_0

    .line 1883
    const-string v4, "mCurrentCmd.getTextMessage is NULL"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1884
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1934
    :goto_0
    return-void

    .line 1887
    :cond_0
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1888
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1891
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1892
    .local v2, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v4, "com.android.stk"

    const v5, 0x10900b5

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1896
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1897
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 1899
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_2

    .line 1900
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1901
    const v4, 0x1020046

    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1904
    :cond_2
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 1905
    const-string v4, "Idle Mode with icon"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1906
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1915
    :goto_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/stk/NotificationAlertActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1920
    .local v3, notificationIntent:Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    sput-object v4, Lcom/android/stk/StkApp;->mIdleMessage:Ljava/lang/String;

    .line 1928
    const v4, 0x1020016

    sget-object v5, Lcom/android/stk/StkApp;->mPLMN:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1929
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1930
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1932
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1909
    .end local v3           #notificationIntent:Landroid/content/Intent;
    :cond_3
    const-string v4, "Idle Mode without icon"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private launchInputActivity()V
    .locals 3

    .prologue
    .line 1530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1533
    const-string v1, "com.android.stk"

    const-string v2, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v1, "INPUT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1535
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1536
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 1509
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.AliasStkMenuActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    const/high16 v0, 0x1400

    .line 1513
    .local v0, intentFlags:I
    if-nez p1, :cond_0

    .line 1516
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1518
    const-string v2, "STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1526
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1527
    return-void

    .line 1521
    :cond_0
    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v0, v2

    .line 1523
    const-string v2, "STATE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchTextDialog()V
    .locals 4

    .prologue
    .line 1539
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->canShowTextDialog(Lcom/android/internal/telephony/cat/TextMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1540
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->sendOkMessage()V

    .line 1552
    :goto_0
    return-void

    .line 1543
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1544
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v2, 0x5880

    sget-object v3, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1549
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1550
    .local v0, msg:Lcom/android/internal/telephony/cat/TextMessage;
    const-string v2, "TEXT"

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1551
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchToneDialog()V
    .locals 3

    .prologue
    .line 1937
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1938
    .local v0, newIntent:Landroid/content/Intent;
    const/high16 v1, 0x5080

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1942
    const-string v1, "TEXT"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1943
    const-string v1, "TONE"

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1944
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 1945
    return-void
.end method

.method private opCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "opCode"

    .prologue
    .line 2143
    packed-switch p1, :pswitch_data_0

    .line 2161
    const-string v0, "unknown op code"

    :goto_0
    return-object v0

    .line 2145
    :pswitch_0
    const-string v0, "OP_CMD"

    goto :goto_0

    .line 2147
    :pswitch_1
    const-string v0, "OP_RESPONSE"

    goto :goto_0

    .line 2149
    :pswitch_2
    const-string v0, "OP_LAUNCH_APP"

    goto :goto_0

    .line 2151
    :pswitch_3
    const-string v0, "OP_END_SESSION"

    goto :goto_0

    .line 2153
    :pswitch_4
    const-string v0, "OP_BOOT_COMPLETED"

    goto :goto_0

    .line 2155
    :pswitch_5
    const-string v0, "OP_EVENT_DOWNLOAD"

    goto :goto_0

    .line 2157
    :pswitch_6
    const-string v0, "OP_DELAYED_MSG"

    goto :goto_0

    .line 2159
    :pswitch_7
    const-string v0, "OP_RESPONSE_IDLE_TEXT"

    goto :goto_0

    .line 2143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private processAbnormalEndCallResponse()V
    .locals 2

    .prologue
    .line 1022
    const-string v0, "STK_LOG"

    const-string v1, "End Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    .line 1024
    return-void
.end method

.method private processAbnormalHoldCallResponse()V
    .locals 2

    .prologue
    .line 1027
    const-string v0, "STK_LOG"

    const-string v1, "HOLD Abnormal CALL PROCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    .line 1029
    return-void
.end method

.method private processAbnormalNoCallResponse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 958
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 959
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 963
    const-string v1, "STK_LOG"

    const-string v2, "Abnormal No Call Response PROCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal No Call Response PROCESS end! cmdName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 971
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 972
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalOpenChannelResponse()V
    .locals 3

    .prologue
    .line 997
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 998
    const-string v1, "Abnormal OpenChannel Response PROCESS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1007
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1008
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalPhone2BusyResponse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 942
    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 943
    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 944
    const-string v1, "Abnormal No Call Response PROCESS - SIM 2 Call Busy"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    .line 955
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal No Call Response PROCESS end - SIM 2 Call Busy! cmdName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 952
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 953
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 954
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processAbnormalResponse()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 926
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 927
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 931
    const-string v1, "STK_LOG"

    const-string v2, "Abnormal Response PROCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 935
    const-string v1, "STK_LOG"

    const-string v2, "Abnormal Response PROCESS end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 937
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 938
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processEndCall()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1155
    return-void
.end method

.method private processEndCallResponse()V
    .locals 6

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1210
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call State  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    sget-object v3, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1218
    const-string v3, "STK_LOG"

    const-string v4, "End call"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->is1A1H()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->hangupAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :cond_0
    :goto_0
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call Not IDLE  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_1
    return-void

    .line 1213
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalResponse()V

    goto :goto_1

    .line 1223
    :catch_0
    move-exception v1

    .line 1224
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    goto :goto_0

    .line 1228
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1229
    .local v2, fg:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    .line 1231
    :try_start_1
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End call  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1233
    :catch_1
    move-exception v1

    .line 1234
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    goto :goto_0

    .line 1211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processHoldCall()V
    .locals 2

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->is1A1H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1150
    :goto_0
    return-void

    .line 1147
    :cond_0
    const-string v0, "STK_LOG"

    const-string v1, "Call Abnormal Hold Call Response(has 1A1H calls)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse()V

    goto :goto_0
.end method

.method private processHoldCallResponse()V
    .locals 5

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1181
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1198
    :pswitch_0
    const-string v2, "STK_LOG"

    const-string v3, "processHoldCallResponse in other state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    .line 1202
    :goto_0
    return-void

    .line 1184
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalResponse()V

    .line 1185
    const-string v2, "STK_LOG"

    const-string v3, "processHoldCallResponse in Idle or HOLDING"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1188
    :pswitch_2
    const-string v2, "STK_LOG"

    const-string v3, "processHoldCallResponse in Active "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :try_start_0
    const-string v2, "STK_LOG"

    const-string v3, "switchHoldingAndActive"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v1

    .line 1193
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "STK_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalResponse()V

    goto :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processNoCall()V
    .locals 3

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1130
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1136
    const-string v1, "STK_LOG"

    const-string v2, "Call Abnormal No Call Response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalNoCallResponse()V

    .line 1140
    :goto_0
    return-void

    .line 1133
    :pswitch_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 1130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processNormalEndCallResponse()V
    .locals 2

    .prologue
    .line 1012
    const-string v0, "STK_LOG"

    const-string v1, "END CALL PROCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalResponse()V

    .line 1014
    return-void
.end method

.method private processNormalHoldCallResponse()V
    .locals 2

    .prologue
    .line 1017
    const-string v0, "STK_LOG"

    const-string v1, "HOLD CALL PROCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalResponse()V

    .line 1019
    return-void
.end method

.method private processNormalOpenChannelResponse()V
    .locals 4

    .prologue
    .line 976
    const-string v2, "Normal OpenChannel Response PROCESS Start"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 979
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 980
    const-string v2, "Normal OpenChannel Response PROCESS mCurrentCmd changed to null!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 985
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal OpenChannel Response PROCESS end! cmdName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 990
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 991
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 992
    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->displayAlphaIcon(Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 993
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processNormalResponse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 908
    const-string v1, "STK_LOG"

    const-string v2, "Normal Response PROCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->mCmdInProgress:Z

    .line 910
    iget-boolean v1, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    if-nez v1, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iput-boolean v3, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 914
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 917
    const-string v1, "STK_LOG"

    const-string v2, "Normal Response PROCESS end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 919
    .local v0, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 920
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 921
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->launchCallMsg()V

    .line 922
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0
.end method

.method private processOpenChannel()V
    .locals 4

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 840
    .local v0, callState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 842
    .local v1, txtMsg:Lcom/android/internal/telephony/cat/TextMessage;
    sget-object v2, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 859
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse()V

    .line 863
    :goto_0
    return-void

    .line 845
    :pswitch_0
    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_0

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processOpenChannelResponse()V
    .locals 3

    .prologue
    .line 866
    const-string v1, "processOpenChannelResponse()+"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, iChannelType:I
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-nez v1, :cond_0

    .line 869
    const/4 v0, 0x2

    .line 873
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processOpenChannelResponse() Error channel type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalOpenChannelResponse()V

    .line 900
    :goto_1
    const-string v1, "processOpenChannelResponse()-"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    return-void

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v0, v1, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    goto :goto_0

    .line 875
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_1

    .line 879
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_1

    .line 883
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_1

    .line 887
    :pswitch_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_1

    .line 891
    :pswitch_4
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalOpenChannelResponse()V

    goto :goto_1

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private processPhoneStateChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1032
    const-string v3, "STK_LOG"

    const-string v4, " PHONE_STATE_CHANGED: "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-boolean v3, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    if-nez v3, :cond_1

    .line 1034
    const-string v3, "STK_LOG"

    const-string v4, " PHONE_STATE_CHANGED: setup in process is false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const-string v3, "STK_LOG"

    const-string v4, " PHONE_STATE_CHANGED: setup in process is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_0

    .line 1041
    sget-object v3, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1043
    :pswitch_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1044
    .local v0, cmdQualifier:I
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1045
    .local v1, fg:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1047
    .local v2, state:Lcom/android/internal/telephony/Call$State;
    const-string v3, "STK_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " PHONE_STATE_CHANGED to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    sget-object v3, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1056
    :pswitch_2
    if-eq v0, v6, :cond_2

    if-ne v0, v7, :cond_4

    .line 1059
    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse()V

    goto :goto_0

    .line 1050
    :pswitch_3
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_0

    .line 1052
    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalHoldCallResponse()V

    goto :goto_0

    .line 1060
    :cond_4
    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 1062
    :cond_5
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalEndCallResponse()V

    goto :goto_0

    .line 1041
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    .line 1048
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processSetupCall()V
    .locals 4

    .prologue
    .line 1159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mSetupCallInProcess:Z

    .line 1160
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1161
    .local v0, cmdQualifier:I
    const-string v1, "STK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Qualifier code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    packed-switch v0, :pswitch_data_0

    .line 1176
    :goto_0
    return-void

    .line 1165
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNoCall()V

    goto :goto_0

    .line 1169
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processHoldCall()V

    goto :goto_0

    .line 1173
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processEndCall()V

    goto :goto_0

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSetupCallResponse()V
    .locals 2

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdQualifier()I

    move-result v0

    .line 1247
    .local v0, cmdQualifier:I
    packed-switch v0, :pswitch_data_0

    .line 1262
    :goto_0
    return-void

    .line 1251
    :pswitch_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processNormalResponse()V

    goto :goto_0

    .line 1255
    :pswitch_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processHoldCallResponse()V

    goto :goto_0

    .line 1259
    :pswitch_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processEndCallResponse()V

    goto :goto_0

    .line 1247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 1073
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1074
    .local v0, service:Lcom/android/internal/telephony/Phone$SuppService;
    const-string v1, "STK_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    sget-object v1, Lcom/android/stk/StkAppService$4;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1086
    :goto_0
    return-void

    .line 1082
    :pswitch_0
    const-string v1, "STK_LOG"

    const-string v2, "Switch failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->processAbnormalHoldCallResponse()V

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private removeMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1962
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1970
    :goto_0
    return v1

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1970
    goto :goto_0
.end method

.method private sendOkMessage()V
    .locals 2

    .prologue
    .line 1687
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1688
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1689
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1690
    return-void
.end method

.method private showIconAndTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1840
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1842
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1843
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1844
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1845
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1846
    return-void
.end method

.method private showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1821
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1822
    .local v0, t:Landroid/widget/Toast;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1823
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1824
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1825
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1826
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1827
    return-void
.end method

.method private showTextToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1830
    iget-object v1, p0, Lcom/android/stk/StkAppService;->lastSelectedItem:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1832
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1834
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1835
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1836
    return-void
.end method

.method private updateAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set menu title in SystemProperties to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2107
    const-string v0, "gsm.setupmenu.title"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    return-void
.end method

.method private waitForLooper()V
    .locals 2

    .prologue
    .line 434
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    const-string v0, "Stk-SAS "

    const-string v1, "do re-init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->init()V

    .line 439
    :cond_1
    monitor-enter p0

    .line 441
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 442
    :catch_0
    move-exception v0

    goto :goto_1

    .line 446
    :cond_2
    return-void
.end method


# virtual methods
.method getIsSimReady()Z
    .locals 1

    .prologue
    .line 2166
    iget-boolean v0, p0, Lcom/android/stk/StkAppService;->isSimReady:Z

    return v0
.end method

.method getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public haveEndSession()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2005
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2014
    :goto_0
    return v1

    .line 2007
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2009
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget v1, v1, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2010
    const-string v1, "end Session a delay Message"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    const/4 v1, 0x1

    goto :goto_0

    .line 2007
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2014
    goto :goto_0
.end method

.method indicateDialogVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mDialogIsVisible:Z

    .line 402
    return-void
.end method

.method indicateInputVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mInputIsVisible:Z

    .line 394
    return-void
.end method

.method indicateMenuVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mMenuIsVisible:Z

    .line 386
    return-void
.end method

.method public initNotify()V
    .locals 2

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->getDefaultPlmn()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/stk/StkApp;->mPLMN:Ljava/lang/String;

    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    new-instance v1, Lcom/android/stk/StkAppService$1;

    invoke-direct {v1, p0}, Lcom/android/stk/StkAppService$1;-><init>(Lcom/android/stk/StkAppService;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    return-void
.end method

.method public isBrowserLaunched(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 1654
    const-string v5, "[isBrowserLaunched]+"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1658
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 1659
    .local v4, top:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1660
    .local v3, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 1661
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1662
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sget-object v6, Lcom/android/stk/StkAppService;->BROWSER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 1664
    const/4 v4, 0x1

    .line 1670
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isBrowserLaunched][top] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    const-string v5, "[isBrowserLaunched]-"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1672
    return v4
.end method

.method isCurCmdSetupCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 418
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIdleScreen()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1578
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1580
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x10

    invoke-virtual {v0, v8, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 1582
    .local v7, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .line 1583
    .local v2, home:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1584
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1585
    .local v6, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-ne v10, v8, :cond_0

    .line 1586
    iget-object v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1592
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    const/4 v4, 0x0

    .line 1593
    .local v4, idle:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1594
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_3

    .line 1595
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1596
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 1598
    const/4 v4, 0x1

    .line 1604
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isIdleScreen][idle] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1605
    return v4
.end method

.method public isIdleScreen(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 1609
    const/4 v4, 0x0

    .line 1610
    .local v4, homePackage:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1611
    .local v5, homeProcess:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1613
    .local v7, idle:Z
    const-string v11, "activity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1615
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v13}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    .line 1617
    .local v10, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v10, :cond_1

    .line 1618
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1619
    .local v9, task:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-ne v13, v11, :cond_0

    .line 1620
    iget-object v11, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1625
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isIdleScreen] homePackage is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1628
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1630
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "home package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", home process = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 1639
    .local v8, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1640
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_2

    .line 1642
    const/4 v7, 0x1

    .line 1647
    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[isIdleScreen][idle] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1648
    return v7

    .line 1631
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v3

    .line 1633
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 252
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 255
    const-string v1, " Unable to get Service handle"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mCmdsQ:Ljava/util/LinkedList;

    .line 260
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Stk App Service"

    invoke-direct {v1, v4, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    .line 261
    iget-object v1, p0, Lcom/android/stk/StkAppService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 262
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 263
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 265
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 268
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mCallHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->initNotify()V

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, mSIMStateChangeFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v1, "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 364
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 365
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v2, :cond_1

    .line 321
    const-string v2, " StkAppService onStart mStkService is null  return"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 328
    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, msg:Landroid/os/Message;
    const-string v2, "op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 340
    iget v2, v1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    const-string v2, "cmd message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    :goto_1
    :pswitch_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 345
    :pswitch_2
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 348
    :pswitch_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 375
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 376
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 378
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 379
    return-void
.end method

.method public sendMessageToServiceHandler(ILjava/lang/Object;)V
    .locals 5
    .parameter "opCode"
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 2134
    const-string v1, "Stk-SAS "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call sendMessageToServiceHandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->opCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v1, :cond_0

    .line 2136
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 2138
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v4, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2139
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2140
    return-void
.end method

.method public setUserAccessState(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2075
    const-string v0, "Stk-SAS "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserAccessState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->isUserAccessed:Z

    .line 2077
    return-void
.end method
