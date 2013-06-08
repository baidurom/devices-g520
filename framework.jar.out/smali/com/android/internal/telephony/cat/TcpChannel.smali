.class Lcom/android/internal/telephony/cat/TcpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V
    .locals 1
    .parameter "cid"
    .parameter "linkMode"
    .parameter "protocolType"
    .parameter "address"
    .parameter "port"
    .parameter "bufferSize"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;)V

    .line 257
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 258
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 259
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 265
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 315
    const/4 v0, 0x0

    .line 318
    .local v0, ret:I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 324
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 325
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 326
    :goto_0
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 329
    return v0

    .line 323
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 324
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 325
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 326
    iput v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 323
    throw v1

    .line 321
    :catch_0
    move-exception v1

    .line 323
    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 324
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 325
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 432
    .local v0, txRemaining:I
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/CatCmdMessage;)I
    .locals 8
    .parameter "cmdMsg"

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x5

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, ret:I
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    if-nez v4, :cond_1

    .line 272
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 273
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    if-ne v4, v7, :cond_3

    .line 288
    :try_start_1
    const-string v4, "[BIP]"

    const-string v5, "TCP stream is open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v4, Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 290
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 291
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 292
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v2

    .line 303
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 304
    const-string v3, "[BIP]"

    const-string v4, "TcpChannel-openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 307
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 308
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    :cond_1
    move v3, v2

    .line 311
    :goto_1
    return v3

    .line 276
    :cond_2
    const/4 v4, 0x7

    :try_start_2
    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create tcp socket"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, e2:Ljava/lang/Exception;
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to create tcp socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    .end local v1           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 294
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "Fail to create data stream"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    const-string v4, "[BIP]"

    const-string/jumbo v5, "tcp socket is not open"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 13
    .parameter "requestSize"
    .parameter "rdr"

    .prologue
    .line 437
    const-string v9, "[BIP]"

    const-string/jumbo v10, "new receiveData method"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v7, 0x0

    .line 440
    .local v7, ret:I
    if-nez p2, :cond_0

    .line 441
    const-string v9, "[BIP]"

    const-string/jumbo v10, "rdr is null"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v9, 0x5

    .line 532
    :goto_0
    return v9

    .line 445
    :cond_0
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "receiveData "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-array v9, p1, [B

    iput-object v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 449
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v9, p1, :cond_2

    .line 450
    const-string v9, "[BIP]"

    const-string/jumbo v10, "rx buffer has enough data"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v11, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 454
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v9, p1

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 455
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v9, v7

    .line 532
    goto :goto_0

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "[BIP]"

    const-string v10, "fail copy rx buffer out 1"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v9, 0x5

    goto :goto_0

    .line 461
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const-string v9, "[BIP]"

    const-string/jumbo v10, "rx buffer is insufficient"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    move v6, p1

    .line 463
    .local v6, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 464
    .local v0, canCopy:I
    const/4 v5, 0x0

    .line 465
    .local v5, hasCopied:I
    const/4 v1, 0x0

    .line 467
    .local v1, canExit:Z
    :goto_2
    const/4 v9, 0x1

    if-eq v1, v9, :cond_1

    .line 468
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasCopied/needCopy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    if-le v6, v0, :cond_3

    .line 470
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canCopy="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v11, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v9, v10, v11, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    add-int/2addr v5, v0

    .line 476
    sub-int/2addr v6, v0

    .line 477
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 478
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    :goto_3
    if-gtz v6, :cond_4

    .line 499
    const-string v9, "[BIP]"

    const-string v10, "can exit the loop"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 501
    const/4 v1, 0x1

    goto :goto_2

    .line 479
    :catch_1
    move-exception v2

    .line 480
    .restart local v2       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "[BIP]"

    const-string v10, "fail copy rx buffer out 2"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 484
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v9, "[BIP]"

    const-string v10, "copy will complete"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v10, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v11, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v9, v10, v11, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    add-int/2addr v5, v0

    .line 489
    const/4 v6, 0x0

    .line 490
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 491
    iget v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 492
    :catch_2
    move-exception v2

    .line 493
    .restart local v2       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "[BIP]"

    const-string v10, "fail copy rx buffer out 3"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 504
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/16 v10, 0xbb8

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 505
    iget-object v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v12, v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 506
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_2

    .line 507
    :catch_3
    move-exception v2

    .line 508
    .local v2, e:Ljava/io/InterruptedIOException;
    const-string v9, "[BIP]"

    const-string/jumbo v10, "receive timeout"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v9, 0x0

    iput v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 510
    new-array v8, v5, [B

    .line 512
    .local v8, temp:[B
    :try_start_4
    const-string v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "just copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 520
    iput-object v8, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 521
    const/16 v7, 0x9

    .line 522
    goto/16 :goto_1

    .line 514
    :catch_4
    move-exception v3

    .line 515
    .local v3, e2:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "[BIP]"

    const-string v10, "fail to process hasCopied data"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v9, 0x0

    iput v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 517
    const/4 v7, 0x5

    .line 518
    goto/16 :goto_1

    .line 523
    .end local v2           #e:Ljava/io/InterruptedIOException;
    .end local v3           #e2:Ljava/lang/IndexOutOfBoundsException;
    .end local v8           #temp:[B
    :catch_5
    move-exception v4

    .line 524
    .local v4, ex:Ljava/lang/Exception;
    const/4 v9, 0x0

    iput v9, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 525
    const/4 v7, 0x5

    .line 526
    goto/16 :goto_1
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 10
    .parameter "requestCount"

    .prologue
    .line 334
    new-instance v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 336
    .local v5, ret:Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v6, p1, [B

    iput-object v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 337
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "receiveData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lt v6, p1, :cond_1

    .line 342
    :try_start_0
    const-string v6, "[BIP]"

    const-string v7, "Start to copy data from buffer"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 346
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 347
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iput v6, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 391
    :cond_0
    :goto_0
    return-object v5

    .line 351
    :cond_1
    move v4, p1

    .line 352
    .local v4, needCopy:I
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 353
    .local v0, canCopy:I
    const/4 v3, 0x0

    .line 354
    .local v3, countCopied:I
    const/4 v1, 0x0

    .line 356
    .local v1, canExitLoop:Z
    :goto_1
    if-nez v1, :cond_0

    .line 357
    if-le v4, v0, :cond_2

    .line 359
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 362
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 363
    add-int/2addr v3, v0

    .line 364
    sub-int/2addr v4, v0

    .line 378
    :goto_2
    if-nez v4, :cond_3

    .line 379
    const/4 v1, 0x1

    goto :goto_1

    .line 369
    :cond_2
    :try_start_2
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v8, v5, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v6, v7, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 372
    add-int/2addr v3, v4

    .line 373
    const/4 v4, 0x0

    goto :goto_2

    .line 382
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 383
    .local v2, count:I
    iput v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 384
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 385
    .end local v2           #count:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 374
    :catch_1
    move-exception v6

    goto :goto_2

    .line 365
    :catch_2
    move-exception v6

    goto :goto_2

    .line 348
    .end local v0           #canCopy:I
    .end local v1           #canExitLoop:Z
    .end local v3           #countCopied:I
    .end local v4           #needCopy:I
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 8
    .parameter "data"
    .parameter "mode"

    .prologue
    const/4 v3, 0x5

    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    sub-int v2, v4, v5

    .line 398
    .local v2, txRemaining:I
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_0
    array-length v4, p1

    if-lt v2, v4, :cond_1

    .line 404
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v7, p1

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 416
    :try_start_1
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 419
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 420
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    .end local v1           #ret:I
    :cond_0
    :goto_1
    return v1

    .line 407
    .restart local v1       #ret:I
    :cond_1
    :try_start_2
    const-string v4, "[BIP]"

    const-string/jumbo v5, "sendData - tx buffer is not enough"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move v1, v3

    .line 410
    goto :goto_1

    .line 421
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v3

    .line 423
    goto :goto_1
.end method
