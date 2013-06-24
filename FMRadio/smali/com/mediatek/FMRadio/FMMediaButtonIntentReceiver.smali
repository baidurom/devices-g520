.class public Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMMediaButtonIntentReceiver.java"


# static fields
.field public static final FM_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.FMRadio"

.field public static final FM_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService"

.field private static final TAG:Ljava/lang/String; = "FMMediaButtonIntentReceiver"

.field private static mDown:Z

.field private static mLastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mLastClickTime:J

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mDown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, intentAction:Ljava/lang/String;
    const-string v8, "FMMediaButtonIntentReceiver"

    const-string v9, "unplug and press-key"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 43
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 45
    .local v2, event:Landroid/view/KeyEvent;
    if-nez v2, :cond_1

    .line 104
    .end local v2           #event:Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v2       #event:Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 50
    .local v7, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 51
    .local v0, action:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 53
    .local v3, eventtime:J
    const-string v8, "FMMediaButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operation headset keyboard is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, command:Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 77
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_0

    .line 78
    if-nez v0, :cond_4

    .line 79
    sget-boolean v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mDown:Z

    if-nez v8, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 82
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v5, i:Landroid/content/Intent;
    const-string v8, "com.mediatek.FMRadio"

    const-string v9, "com.mediatek.FMRadio.FMRadioService"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v8, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/16 v8, 0x4f

    if-ne v7, v8, :cond_3

    sget-wide v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mLastClickTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 86
    const-string v8, "FMMediaButtonIntentReceiver"

    const-string v9, "unplug headset action"

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v8, "command"

    const-string v9, "next"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mLastClickTime:J

    .line 96
    :goto_2
    const/4 v8, 0x1

    sput-boolean v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mDown:Z

    .line 101
    .end local v5           #i:Landroid/content/Intent;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 67
    :pswitch_1
    const-string v1, "next"

    .line 68
    goto :goto_1

    .line 91
    .restart local v5       #i:Landroid/content/Intent;
    :cond_3
    const-string v8, "command"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    sput-wide v3, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mLastClickTime:J

    goto :goto_2

    .line 99
    .end local v5           #i:Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    sput-boolean v8, Lcom/mediatek/FMRadio/FMMediaButtonIntentReceiver;->mDown:Z

    goto :goto_3

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
