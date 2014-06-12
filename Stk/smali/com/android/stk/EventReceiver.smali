.class public Lcom/android/stk/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/EventReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/stk/EventReceiver;->sendDownloadEvent(Landroid/content/Context;I)V

    return-void
.end method

.method private sendDownloadEvent(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "evdlId"

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "downLoad event id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    move-object v1, p1

    .line 67
    .local v1, c:Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    new-instance v2, Lcom/android/stk/EventReceiver$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/stk/EventReceiver$1;-><init>(Lcom/android/stk/EventReceiver;Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    .local v2, r:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method
