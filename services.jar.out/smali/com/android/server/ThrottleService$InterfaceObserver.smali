.class Lcom/android/server/ThrottleService$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 0
    .parameter "handler"
    .parameter "msg"
    .parameter "iface"

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    .line 176
    iput p2, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    .line 177
    iput-object p3, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2
    .parameter "iface"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :cond_0
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 189
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 199
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    :cond_0
    return-void
.end method

.method public interfaceStatusChangedIpv6(Ljava/lang/String;Z)V
    .locals 0
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 202
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 200
    return-void
.end method
