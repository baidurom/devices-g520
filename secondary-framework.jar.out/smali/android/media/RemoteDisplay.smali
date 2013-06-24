.class public Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# static fields
.field public static final CONNECTED_ACTION:Ljava/lang/String; = "android.media.RemoteDisplay.connected"

.field public static final DISCONNECTED_ACTION:Ljava/lang/String; = "android.media.RemoteDisplay.disconnected"

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.media.RemoteDisplay.error"

.field public static final GENERIC_MESSAGE_PAUSE:I = 0x2

.field public static final GENERIC_MESSAGE_PLAY:I = 0x1

.field public static final GENERIC_MESSAGE_TEARDOWN:I = 0x3

.field private static final REMOTEDISPLAY_CONNECTED:I = 0x1

.field private static final REMOTEDISPLAY_DISCONNECTED:I = 0x2

.field private static final REMOTEDISPLAY_ERROR:I = 0x3

.field private static final REMOTEDISPLAY_KEYEV:I = 0x4

.field private static final REMOTEDISPLAY_RTSPGENERICMSGEV:I = 0x6

.field private static final REMOTEDISPLAY_RTSP_PAUSE_EVENT:I = 0x1

.field private static final REMOTEDISPLAY_RTSP_TEARDOWN_EVENT:I = 0x2

.field private static final REMOTEDISPLAY_TOUCHEV:I = 0x5

.field public static final RTSP_PAUSE_ACTION:Ljava/lang/String; = "android.media.RemoteDisplay.rtspause"

.field public static final RTSP_TEARDOWN_ACTION:Ljava/lang/String; = "android.media.RemoteDisplay.rtspteardown"

.field public static final RTSP_TEARDOWN_TIMEOUT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RemoteDisplay"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mInputKeyEventRegistrants:Landroid/os/RegistrantList;

.field protected mInputTouchEventRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mInputKeyEventRegistrants:Landroid/os/RegistrantList;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mInputTouchEventRegistrants:Landroid/os/RegistrantList;

    .line 78
    const-string v0, "RemoteDisplay"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private native doDeinit()I
.end method

.method private native doInit()I
.end method

.method private native doSendGenericMsg(I)I
.end method

.method private native doSetBitrateControl(I)I
.end method

.method private native doStartServer(IIIIII)I
.end method

.method private native doStartSink(IIIII)I
.end method

.method private native doStopServer()I
.end method

.method private native doStopSink()I
.end method


# virtual methods
.method public deinit()I
    .locals 2

    .prologue
    .line 88
    const-string v0, "RemoteDisplay"

    const-string v1, "deinit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Landroid/media/RemoteDisplay;->doDeinit()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 2

    .prologue
    .line 83
    const-string v0, "RemoteDisplay"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Landroid/media/RemoteDisplay;->doInit()I

    move-result v0

    return v0
.end method

.method public onEventHappened(I)V
    .locals 4
    .parameter "event"

    .prologue
    .line 149
    const-string v1, "RemoteDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEventHappened, event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 153
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RemoteDisplay.connected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RemoteDisplay.disconnected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RemoteDisplay.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInputEventHappened(IIII)V
    .locals 10
    .parameter "event"
    .parameter "input1"
    .parameter "input2"
    .parameter "input3"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    const-string v3, "RemoteDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputEventHappened, event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    const-string v3, "RemoteDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputEventHappened, REMOTEDISPLAY_KEYEV  input1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " input2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-array v1, v8, [I

    .line 175
    .local v1, keycode:[I
    aput p2, v1, v9

    .line 176
    aput p3, v1, v7

    .line 177
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mInputKeyEventRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mInputKeyEventRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 184
    .end local v1           #keycode:[I
    :pswitch_1
    new-array v2, v8, [I

    .line 185
    .local v2, param:[I
    aput p2, v2, v9

    .line 186
    aput p3, v2, v7

    .line 187
    const-string v3, "RemoteDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputEventHappened, REMOTEDISPLAY_TOUCHEV  input1= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " input2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mInputTouchEventRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mInputTouchEventRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v6, v2, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 196
    .end local v2           #param:[I
    :pswitch_2
    if-ne p2, v7, :cond_1

    .line 197
    const-string v3, "RemoteDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputEventHappened, input = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RemoteDisplay.rtspause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 200
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    if-ne p2, v8, :cond_0

    .line 201
    const-string v3, "RemoteDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onInputEventHappened, input = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RemoteDisplay.rtspteardown"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/media/RemoteDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerInputKeyEvent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mInputKeyEventRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 135
    return-void
.end method

.method public registerInputKeyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 129
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Landroid/media/RemoteDisplay;->mInputKeyEventRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 131
    return-void
.end method

.method public registerInputTouchEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 140
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Landroid/media/RemoteDisplay;->mInputTouchEventRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 141
    return-void
.end method

.method public sendGenericMsgServer(I)I
    .locals 2
    .parameter "cmd"

    .prologue
    .line 119
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "sendGenericMsgServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplay;->doSendGenericMsg(I)I

    move-result v0

    return v0
.end method

.method public setBitrateControl(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 123
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "setBitrateControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplay;->doSetBitrateControl(I)I

    move-result v0

    return v0
.end method

.method public startServer(IIIII)I
    .locals 7
    .parameter "ip0"
    .parameter "ip1"
    .parameter "ip2"
    .parameter "ip3"
    .parameter "port"

    .prologue
    .line 93
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteDisplay;->doStartServer(IIIIII)I

    move-result v0

    return v0
.end method

.method public startServerEx(IIIIII)I
    .locals 2
    .parameter "ip0"
    .parameter "ip1"
    .parameter "ip2"
    .parameter "ip3"
    .parameter "port"
    .parameter "flag"

    .prologue
    .line 98
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startServerEx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct/range {p0 .. p6}, Landroid/media/RemoteDisplay;->doStartServer(IIIIII)I

    move-result v0

    return v0
.end method

.method public startSink(IIIII)I
    .locals 2
    .parameter "ip0"
    .parameter "ip1"
    .parameter "ip2"
    .parameter "ip3"
    .parameter "port"

    .prologue
    .line 108
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct/range {p0 .. p5}, Landroid/media/RemoteDisplay;->doStartSink(IIIII)I

    move-result v0

    return v0
.end method

.method public stopServer()I
    .locals 2

    .prologue
    .line 103
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "stopServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Landroid/media/RemoteDisplay;->doStopServer()I

    move-result v0

    return v0
.end method

.method public stopSink()I
    .locals 2

    .prologue
    .line 114
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "stopSink"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Landroid/media/RemoteDisplay;->doStopSink()I

    move-result v0

    return v0
.end method

.method public unregisterInputTouchEvent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mInputTouchEventRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 145
    return-void
.end method
