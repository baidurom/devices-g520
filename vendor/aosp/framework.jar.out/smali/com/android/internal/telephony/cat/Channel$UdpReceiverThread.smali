.class public Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UdpReceiverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;

.field udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 198
    const/16 v4, 0x578

    new-array v1, v4, [B

    .line 200
    .local v1, localBuffer:[B
    const-string v4, "[BIP]"

    const-string v5, "UdpReceiverThread run"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v1

    invoke-direct {v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 204
    .local v3, recvPacket:Ljava/net/DatagramPacket;
    :try_start_0
    const-string v4, "[BIP]"

    const-string v5, "Before UdpReceiverThread: Receive data from network"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 206
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 207
    .local v2, recvLen:I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UdpReceiverThread: Receive data from network:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-ltz v2, :cond_0

    .line 209
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v2, v4, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 211
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 212
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 214
    :cond_0
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UdpReceiverThread: buffer data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v2           #recvLen:I
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "[BIP]"

    const-string v5, "Error in UdpReceiverThread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
