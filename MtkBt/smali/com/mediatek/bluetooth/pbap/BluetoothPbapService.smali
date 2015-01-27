.class public Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PBAP_AUTHENTICATE_CANCEL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.cancel"

.field public static final PBAP_AUTHENTICATE_RETURN_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authenticate.return"

.field public static final PBAP_AUTHENTICATE_TIMEOUT:I = 0x7530

.field public static final PBAP_AUTHORIZE_CANCEL_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authorize.cancel"

.field public static final PBAP_AUTHORIZE_RETURN_ACTION:Ljava/lang/String; = "com.android.bluetooth.pbap.authorize.return"

.field public static final PBAP_AUTHORIZE_TIMEOUT:I = 0x3a98

.field public static final PBAP_AUTH_TIMEOUT_IND:I = 0x3e9

.field public static final PBAP_NOTIFICATION_AUTHORIZE:I = 0x1

.field public static final PBAP_NOTIFICATION_AUTH_CHALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapService"

.field private static sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

.field public static sUtState:Z


# instance fields
.field mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mIsConnected:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

.field private mPid:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mServerState:I

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sUtState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 95
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 98
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    .line 105
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    .line 228
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 231
    new-instance v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;-><init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 111
    sput-object p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->cancelServerNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->setServerNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastPbapState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_PBAP:Landroid/bluetooth/BluetoothProfileManager$Profile;

    .line 266
    .local v1, profile:Landroid/bluetooth/BluetoothProfileManager$Profile;
    const-string v2, "android.bluetooth.profilemanager.extra.PROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 267
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private cancelServerNotification()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 429
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    if-lez v1, :cond_0

    .line 433
    const-string v1, "unregisterReceiver"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 438
    const-string v1, "Send authorize cancel intent"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.pbap.authorize.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 450
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 452
    :cond_0
    return-void

    .line 441
    :cond_1
    iget v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 443
    const-string v1, "Send authenticate cancel intent"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR] invalid pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 341
    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public static getPbapServiceInstence()Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    return-object v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 336
    const-string v0, "BluetoothPbapService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method private sendServiceMsg(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg"

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[API] sendServiceMsg("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 350
    iput p1, v0, Landroid/os/Message;->what:I

    .line 351
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v1, "mServiceHandler is null"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setServerNotification(I)V
    .locals 13
    .parameter "mode"

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 362
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 363
    .local v3, noti:Landroid/app/Notification;
    const/4 v0, 0x0

    .line 364
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 365
    .local v4, returnAction:Ljava/lang/String;
    const/4 v6, -0x1

    .line 367
    .local v6, timeout:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setServerNotification("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 369
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 371
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 372
    new-instance v3, Landroid/app/Notification;

    .end local v3           #noti:Landroid/app/Notification;
    const v8, 0x1080080

    const v9, 0x7f050068

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 374
    .restart local v3       #noti:Landroid/app/Notification;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/mediatek/bluetooth/pbap/BluetoothServerAuthorize;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote device name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 377
    const-string v8, "com.mediatek.bluetooth.extra.device_name"

    iget-object v9, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth.extra.action_cancel"

    const-string v10, "com.android.bluetooth.pbap.authorize.cancel"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth.extra.action_return"

    const-string v10, "com.android.bluetooth.pbap.authorize.return"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v4, "com.android.bluetooth.pbap.authorize.return"

    .line 383
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 384
    const v8, 0x7f050070

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f05006a

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v1, v8, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 386
    const/16 v6, 0x3a98

    .line 408
    :goto_0
    const/4 v8, 0x4

    new-array v7, v8, [J

    fill-array-data v7, :array_0

    .line 411
    .local v7, vibrate:[J
    iput-object v7, v3, Landroid/app/Notification;->vibrate:[J

    .line 412
    iget v8, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/app/Notification;->defaults:I

    .line 413
    iget v8, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v3, Landroid/app/Notification;->defaults:I

    .line 414
    iget v8, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 416
    const/16 v8, 0xd

    invoke-static {v8, p1}, Lcom/mediatek/bluetooth/util/NotificationFactory;->getProfileNotificationId(II)I

    move-result v8

    iput v8, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    .line 417
    iget-object v8, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    iget v9, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPid:I

    invoke-virtual {v8, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 419
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 420
    .local v5, returnFilter:Landroid/content/IntentFilter;
    const-string v8, "registerReceiver"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 421
    iget-object v8, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    if-lez v6, :cond_0

    .line 423
    iget-object v8, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    const/16 v10, 0x3e9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    int-to-long v10, v6

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    .end local v5           #returnFilter:Landroid/content/IntentFilter;
    .end local v7           #vibrate:[J
    :cond_0
    :goto_1
    return-void

    .line 387
    :cond_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_2

    .line 388
    new-instance v3, Landroid/app/Notification;

    .end local v3           #noti:Landroid/app/Notification;
    const v8, 0x1080080

    const v9, 0x7f050069

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 390
    .restart local v3       #noti:Landroid/app/Notification;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/mediatek/bluetooth/pbap/BluetoothAuthenticating;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    const-string v8, "com.mediatek.bluetooth.extra.device_name"

    iget-object v9, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth.extra.action_cancel"

    const-string v10, "com.android.bluetooth.pbap.authenticate.cancel"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth.extra.action_return"

    const-string v10, "com.android.bluetooth.pbap.authenticate.return"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v4, "com.android.bluetooth.pbap.authenticate.return"

    .line 398
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v8, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 399
    const v8, 0x7f050072

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f050073

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v1, v8, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 401
    const/16 v6, 0x7530

    goto/16 :goto_0

    .line 403
    :cond_2
    const-string v8, "[ERR] unsupported mode"

    invoke-direct {p0, v8}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 254
    const-string v0, "BluetoothPbapService"

    const-string v1, "Enter onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-class v0, Landroid/bluetooth/IBluetoothPbap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServer:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xe

    .line 275
    const-string v2, "Enter onCreate()"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 278
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 281
    const-string v1, "notification"

    .line 282
    .local v1, ns:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    .line 283
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mNM:Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    .line 284
    const-string v2, "BluetoothPbapService"

    const-string v3, "Get Notification-Manager failed, stop PBAP service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 287
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 310
    :goto_0
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 311
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 312
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 292
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    new-instance v2, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    iget-object v3, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 294
    iget-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->enable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    const-string v2, "[ERR] Pbap server enable failed"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    .line 296
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 297
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 298
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 299
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    goto :goto_0

    .line 301
    :cond_1
    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    goto :goto_0

    .line 304
    :cond_2
    iput-object v6, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 305
    const-string v2, "[ERR] Pbap server enable failed"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->errorLog(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 307
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 315
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_3
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 316
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 321
    const-string v0, "Before stop listening to socket."

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->printLog(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->cancelServerNotification()V

    .line 323
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    invoke-virtual {v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;->disable()V

    .line 326
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->broadcastPbapState(I)V

    .line 328
    :cond_0
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/mediatek/bluetooth/pbap/BluetoothPbapServer;

    .line 329
    iput-object v1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 330
    sput-object v1, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;->sPbapServiceInstenceForUT:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    .line 331
    return-void
.end method
