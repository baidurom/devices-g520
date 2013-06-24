.class Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/bluetooth/pbap/BluetoothPbapService$3;->this$0:Lcom/mediatek/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method
