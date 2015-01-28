.class public Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;
.super Landroid/widget/FrameLayout;
.source "AlarmBootUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final DELAY_TIME_SECONDS:I = 0x7

.field private static final DISABLE_POWER_KEY_ACTION:Ljava/lang/String; = "android.intent.action.DISABLE_POWER_KEY"

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final SNOOZE:Ljava/lang/String; = "android.intent.action.SNOOZE"

.field private static final TAG:Ljava/lang/String; = "AlarmBootUnlockScreen"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v6, 0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v4, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    const-string v4, "AlarmBootUnlockScreen"

    const-string v5, "create AlarmBootUnlockScreen ... "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->setFocusable(Z)V

    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    .line 97
    iput-object p4, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 98
    iput-object p5, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    iput-object p3, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x2070001

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    const v4, 0x20e0003

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 104
    .local v3, snooze:Landroid/widget/Button;
    const v4, 0x20e0005

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 105
    .local v2, powerOn:Landroid/widget/Button;
    const v4, 0x20e0006

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 106
    .local v1, powerOff:Landroid/widget/Button;
    new-instance v4, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v4, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v4, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "alarm_killed"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->enableEventDispatching(Z)V

    .line 125
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->powOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->powOff()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->sendBR(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismiss(Z)V
    .locals 2
    .parameter "killed"

    .prologue
    .line 188
    const-string v1, "AlarmBootUnlockScreen"

    if-eqz p1, :cond_1

    const-string v0, "Alarm killed"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->stopPlayAlarm()V

    .line 194
    :cond_0
    return-void

    .line 188
    :cond_1
    const-string v0, "Alarm dismissed by user"

    goto :goto_0
.end method

.method private enableEventDispatching(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 175
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 178
    .local v1, wm:Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #wm:Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AlarmBootUnlockScreen"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powOff()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->enableEventDispatching(Z)V

    .line 169
    const-string v0, "wakelock.release"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->sendBR(Ljava/lang/String;)V

    .line 170
    const-string v0, "stop_ringtone"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->sendBR(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private powOn()V
    .locals 5

    .prologue
    .line 143
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->enableEventDispatching(Z)V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->stopPlayAlarm()V

    .line 147
    const-string v2, "service.bootanim.exit"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "ctl.start"

    const-string v3, "bootanim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "AlarmBootUnlockScreen"

    const-string v3, "start boot animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.normal.boot"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, bootIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 155
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void
.end method

.method private sendBR(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 231
    const-string v1, "AlarmBootUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send BR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method private snooze()V
    .locals 2

    .prologue
    .line 131
    const v1, 0x20e0003

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->dismiss(Z)V

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v1, "wakelock.release"

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->sendBR(Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOOZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private stopPlayAlarm()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 199
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
