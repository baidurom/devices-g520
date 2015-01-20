.class public Lcom/mediatek/gallery3d/data/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 106
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 5
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "allowDefault"

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 112
    :cond_0
    const-string v2, "RequestHelper"

    const-string v3, "requestDataBundle:got null parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    return-object v1

    .line 119
    :cond_2
    invoke-static {p4, p5}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    .line 121
    .local v0, mediaRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run:mediaRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1, p3}, Lcom/mediatek/gallery3d/data/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 1
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 8
    .parameter "jc"
    .parameter "params"
    .parameter "context"
    .parameter "filePath"
    .parameter "allowDefault"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 40
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 41
    :cond_0
    const-string v2, "RequestHelper"

    const-string v4, "requestOriginalBitmap:got null parameters"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    :goto_0
    return-object v1

    .line 45
    :cond_2
    const/4 v6, 0x0

    .line 46
    .local v6, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 48
    .local v0, mediaRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;
    invoke-static {p3, v4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 50
    .local v3, buffer:[B
    if-eqz v3, :cond_3

    .line 52
    invoke-static {p2, p3}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    const-string v2, "RequestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestOriginalBitmap:mimeType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x1

    invoke-static {v6, v2}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    .line 60
    :goto_1
    const-string v2, "RequestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "run:mediaRequest="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v0, :cond_1

    .line 65
    if-nez v3, :cond_4

    .line 66
    invoke-interface {v0, p0, p1, p3}, Lcom/mediatek/gallery3d/data/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {p3}, Landroid/media/MediaFile;->getMimeTypeBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {v6, p4}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_4
    array-length v5, v3

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 1
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 6
    .parameter "jc"
    .parameter "params"
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "allowDefault"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 79
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 80
    :cond_0
    const-string v2, "RequestHelper"

    const-string v4, "requestDataBundle:got null parameters"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    :goto_0
    return-object v1

    .line 84
    :cond_2
    invoke-static {p2, v4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 86
    .local v3, buffer:[B
    const/4 v0, 0x0

    .line 87
    .local v0, mediaRequest:Lcom/mediatek/gallery3d/data/IMediaRequest;
    if-nez v3, :cond_3

    .line 88
    invoke-static {p3, p4}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p0, p1, p2}, Lcom/mediatek/gallery3d/data/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Ljava/lang/String;)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_3
    const/4 v2, 0x1

    invoke-static {p3, v2}, Lcom/mediatek/gallery3d/data/RequestManager;->getMediaRequest(Ljava/lang/String;Z)Lcom/mediatek/gallery3d/data/IMediaRequest;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 100
    array-length v5, v3

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/IMediaRequest;->request(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;[BII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v1

    goto :goto_0
.end method
