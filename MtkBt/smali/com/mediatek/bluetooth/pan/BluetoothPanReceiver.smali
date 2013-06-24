.class public Lcom/mediatek/bluetooth/pan/BluetoothPanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPanReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, btState:I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/bluetooth/pan/BluetoothPanService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    .end local v2           #btState:I
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 125
    .local v1, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/bluetooth/pan/BluetoothPanService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
