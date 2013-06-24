.class public Lcom/mediatek/phone/recording/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Recorder"


# instance fields
.field mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:J

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    .line 89
    return-void
.end method

.method private setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;->onError(I)V

    .line 319
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 294
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    if-ne p1, v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iput p1, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    .line 298
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    .line 207
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 188
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    .line 195
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 334
    const-string v0, "Recorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 325
    const-string v0, "onError"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 330
    :cond_0
    return-void
.end method

.method public progress()I
    .locals 4

    .prologue
    .line 160
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "recorderState"

    .prologue
    const-wide/16 v5, -0x1

    .line 116
    const-string v4, "sample_path"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, samplePath:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v4, "sample_length"

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 121
    .local v1, sampleLength:J
    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->delete()V

    .line 133
    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    .line 134
    iput-wide v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 136
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/mediatek/phone/recording/Recorder;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    return-wide v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "recorderState"

    .prologue
    .line 96
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "sample_length"

    iget-wide v1, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    return-void
.end method

.method public setOnStateChangedListener(Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/phone/recording/Recorder;->mOnStateChangedListener:Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;

    .line 145
    return-void
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 10
    .parameter "outputfileformat"
    .parameter "extension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 216
    const-string v7, "startRecording"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 219
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd_HH.mm.ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, prefix:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 223
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    if-nez v6, :cond_0

    .line 224
    const-string v7, "-----story manager is null----"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, sampleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_1

    .line 230
    const-string v7, "Recorder"

    const-string v8, "----- file can\'t write!! ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v4, Ljava/io/File;

    .end local v4           #sampleDir:Ljava/io/File;
    const-string v7, "/sdcard/sdcard"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v4       #sampleDir:Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PhoneRecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .end local v4           #sampleDir:Ljava/io/File;
    .local v5, sampleDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 237
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_2
    :try_start_0
    invoke-static {v3, p2, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    const-string v7, "finish creating temp file, start to record"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 250
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 251
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 252
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 253
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 254
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 255
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 258
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V

    .line 259
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    .line 261
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->setState(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, exception:Ljava/io/IOException;
    const-string v7, "startRecording, IOException"

    invoke-virtual {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 264
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/mediatek/phone/recording/Recorder;->setError(I)V

    .line 265
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->reset()V

    .line 266
    iget-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V

    .line 267
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 268
    throw v2

    .line 242
    .end local v2           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 243
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v9}, Lcom/mediatek/phone/recording/Recorder;->setError(I)V

    .line 244
    const-string v7, "Recorder"

    const-string v8, "----***------- can\'t access sdcard !!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    throw v1
.end method

.method public state()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/mediatek/phone/recording/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 286
    const-string v0, "stop"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->stopRecording()V

    .line 288
    return-void
.end method

.method public stopRecording()V
    .locals 4

    .prologue
    .line 273
    const-string v0, "stopRecording"

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->log(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/phone/recording/Recorder;->mSampleLength:J

    .line 278
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 279
    iget-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/recording/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/recording/Recorder;->setState(I)V

    goto :goto_0
.end method
