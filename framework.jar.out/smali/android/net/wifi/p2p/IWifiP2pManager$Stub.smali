.class public abstract Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field static final TRANSACTION_emEnablePersist:I = 0x8

.field static final TRANSACTION_emGetAutoConnectWaitTimeValue:I = 0x10

.field static final TRANSACTION_emGetConfigMethod:I = 0x11

.field static final TRANSACTION_emGetDiscoverTimeoutValue:I = 0xf

.field static final TRANSACTION_emGetIntent:I = 0xd

.field static final TRANSACTION_emGetPersistState:I = 0xe

.field static final TRANSACTION_emGetSigma:I = 0xc

.field static final TRANSACTION_emSetAutoConnectWaitTimeValue:I = 0xa

.field static final TRANSACTION_emSetConfigMethod:I = 0xb

.field static final TRANSACTION_emSetDiscoverTimeoutValue:I = 0x9

.field static final TRANSACTION_emSetIntent:I = 0x7

.field static final TRANSACTION_emSetSigma:I = 0x6

.field static final TRANSACTION_fastConnectAsGo:I = 0x4

.field static final TRANSACTION_getMacAddress:I = 0x5

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getPeerIp:I = 0x2

.field static final TRANSACTION_isWfdEnabled:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 54
    .local v1, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v1, p3, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v1           #_result:Landroid/os/Messenger;
    :sswitch_2
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getPeerIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->isWfdEnabled()Z

    move-result v1

    .line 78
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1           #_result:Z
    :sswitch_4
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    sget-object v4, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 92
    .local v0, _arg0:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v1

    .line 93
    .local v1, _result:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v1, p3, v3}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    .end local v0           #_arg0:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .end local v1           #_result:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    goto :goto_1

    .line 99
    .restart local v1       #_result:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .end local v1           #_result:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :sswitch_5
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emSetSigma(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emSetIntent(I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 131
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 134
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emEnablePersist(Z)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v2

    .line 133
    goto :goto_2

    .line 140
    :sswitch_9
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emSetDiscoverTimeoutValue(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:I
    :sswitch_a
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emSetAutoConnectWaitTimeValue(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emSetConfigMethod(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetSigma()I

    move-result v1

    .line 169
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v1           #_result:I
    :sswitch_d
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetIntent()I

    move-result v1

    .line 177
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 183
    .end local v1           #_result:I
    :sswitch_e
    const-string v4, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetPersistState()Z

    move-result v1

    .line 185
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1           #_result:Z
    :sswitch_f
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetDiscoverTimeoutValue()I

    move-result v1

    .line 193
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v1           #_result:I
    :sswitch_10
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetAutoConnectWaitTimeValue()I

    move-result v1

    .line 201
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v1           #_result:I
    :sswitch_11
    const-string v2, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->emGetConfigMethod()I

    move-result v1

    .line 209
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
