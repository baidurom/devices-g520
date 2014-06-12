.class public Lcom/android/camera/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayerEx"


# instance fields
.field private mAfd:Landroid/content/res/AssetFileDescriptor;

.field private mAudioStreamType:I

.field private mExit:Z

.field private mPlayCount:I

.field private mPool:Landroid/media/SoundPool;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Z)V
    .locals 1
    .parameter "context"
    .parameter "afd"
    .parameter "enforceAudible"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    .line 66
    iput-object p2, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 67
    if-eqz p3, :cond_0

    .line 68
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/SoundPlayer;->mAudioStreamType:I

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/SoundPlayer;->CreateSoundPlayer()V

    .line 73
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/SoundPlayer;->mAudioStreamType:I

    goto :goto_0
.end method

.method private CreateSoundPlayer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    new-instance v1, Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/SoundPlayer;->mAudioStreamType:I

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    .line 77
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/SoundPlayer;->mSoundId:I

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SoundPlayerEx"

    const-string v2, "Error load play sound"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public play()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget v0, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playSound(II)V
    .locals 7
    .parameter "sound"
    .parameter "loop"

    .prologue
    const v2, 0x3f4ccccd

    .line 86
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 87
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 101
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SoundPlayer;->mExit:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_0
    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mThread:Ljava/lang/Thread;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :goto_1
    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 120
    iput-object v1, p0, Lcom/android/camera/SoundPlayer;->mPool:Landroid/media/SoundPool;

    .line 122
    :cond_2
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 46
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/SoundPlayer;->mExit:Z

    if-eqz v1, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    iget v1, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    if-gtz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SoundPlayerEx"

    const-string v2, "Error playing sound"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_3
    iget v1, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/SoundPlayer;->mPlayCount:I

    .line 57
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    :try_start_4
    iget v1, p0, Lcom/android/camera/SoundPlayer;->mSoundId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/SoundPlayer;->playSound(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
