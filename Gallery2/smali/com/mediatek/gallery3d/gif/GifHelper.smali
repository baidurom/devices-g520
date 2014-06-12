.class public Lcom/mediatek/gallery3d/gif/GifHelper;
.super Ljava/lang/Object;
.source "GifHelper.java"


# static fields
.field public static final FILE_EXTENSION:Ljava/lang/String; = "gif"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/gif"

.field private static final TAG:Ljava/lang/String; = "GifHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 6
    .parameter "jc"
    .parameter "fd"

    .prologue
    const/4 v4, 0x0

    .line 83
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 84
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v2

    .line 85
    .local v2, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2           #gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    .end local v3           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e1:Ljava/lang/OutOfMemoryError;
    const-string v5, "GifHelper"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 89
    goto :goto_0

    .line 90
    .end local v0           #e1:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 91
    .local v1, e2:Ljava/io/IOException;
    const-string v5, "GifHelper"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 92
    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 2
    .parameter "jc"
    .parameter "is"

    .prologue
    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "GifHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 7
    .parameter "jc"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 42
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, is:Ljava/io/InputStream;
    invoke-static {v4}, Lcom/mediatek/gallery3d/gif/GifHelper;->createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;

    move-result-object v3

    .line 44
    .local v3, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    .end local v3           #gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e1:Ljava/io/FileNotFoundException;
    const-string v6, "GifHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 48
    goto :goto_0

    .line 49
    .end local v0           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, e2:Ljava/lang/OutOfMemoryError;
    const-string v6, "GifHelper"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 51
    goto :goto_0

    .line 52
    .end local v1           #e2:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 53
    .local v2, e3:Ljava/io/IOException;
    const-string v6, "GifHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    .line 54
    goto :goto_0
.end method

.method public static createGifDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BII)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 3
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 61
    const-string v1, "GifHelper"

    const-string v2, "createGifDecoder:find null buffer!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>([BII)V

    .line 65
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v0}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "GifHelper"

    const-string v2, "createGifDecoder:got invalid GifDecoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createGifDecoderInner(Ljava/io/InputStream;)Lcom/mediatek/gifdecoder/GifDecoder;
    .locals 3
    .parameter "is"

    .prologue
    .line 97
    if-nez p0, :cond_1

    .line 98
    const-string v1, "GifHelper"

    const-string v2, "createGifDecoder:find null InputStream!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    new-instance v0, Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-direct {v0, p0}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>(Ljava/io/InputStream;)V

    .line 102
    .local v0, gifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;
    invoke-virtual {v0}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "GifHelper"

    const-string v2, "createGifDecoder:got invalid GifDecoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method
