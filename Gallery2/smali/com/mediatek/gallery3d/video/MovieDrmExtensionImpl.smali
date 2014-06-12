.class public Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;
.super Lcom/mediatek/gallery3d/ext/MovieDrmExtension;
.source "MovieDrmExtensionImpl.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "MovieDrmExtensionImpl"

.field private static sDrmClient:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mediatek/gallery3d/ext/MovieDrmExtension;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->consume(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method private static canShare(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 113
    const-string v5, "MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 116
    .local v0, client:Landroid/drm/DrmManagerClient;
    const/4 v4, 0x0

    .line 117
    .local v4, share:Z
    const/4 v2, 0x0

    .line 119
    .local v2, isDrm:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v5}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    :goto_0
    if-eqz v2, :cond_1

    .line 125
    const/4 v3, 0x1

    .line 127
    .local v3, rightsStatus:I
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v0, p1, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 131
    :goto_1
    if-nez v3, :cond_0

    const/4 v4, 0x1

    .line 133
    :goto_2
    const-string v5, "MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), rightsStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v3           #rightsStatus:I
    :goto_3
    const-string v5, "MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canShare("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), share="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v4

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "MovieDrmExtensionImpl"

    const-string v6, "canShare() : raise exception, we assume it\'s not a OMA DRM file"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #rightsStatus:I
    :catch_1
    move-exception v1

    .line 129
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v5, "MovieDrmExtensionImpl"

    const-string v6, "canShare() : raise exception, we assume it has no rights to be shared"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    .line 136
    .end local v3           #rightsStatus:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_3
.end method

.method private static consume(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 104
    .local v0, client:Landroid/drm/DrmManagerClient;
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->consume(Landroid/net/Uri;I)I

    move-result v1

    .line 106
    .local v1, result:I
    const-string v2, "MovieDrmExtensionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1
.end method

.method private static ensureDrmClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Landroid/drm/DrmManagerClient;

    .line 62
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->sDrmClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method private static handleDrmFile(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)Z
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v8, 0x1

    .line 67
    const-string v5, "MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDrmFile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->ensureDrmClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 70
    .local v0, client:Landroid/drm/DrmManagerClient;
    const/4 v3, 0x0

    .line 71
    .local v3, result:Z
    invoke-static {p0, p1, v0}, Landroid/drm/DrmUtils;->getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmUtils$DrmProfile;

    move-result-object v2

    .line 72
    .local v2, info:Landroid/drm/DrmUtils$DrmProfile;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Landroid/drm/DrmUtils$DrmProfile;->isDrm:Z

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/drm/DrmUtils$DrmProfile;->method:I

    if-eq v5, v8, :cond_0

    .line 73
    const/4 v4, 0x1

    .line 75
    .local v4, rightsStatus:I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatusForTap(Landroid/net/Uri;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 79
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 97
    .end local v4           #rightsStatus:I
    :cond_0
    :goto_1
    :pswitch_0
    const-string v5, "MovieDrmExtensionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDrmFile() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v3

    .line 76
    .restart local v4       #rightsStatus:I
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "MovieDrmExtensionImpl"

    const-string v6, "handleDrmFile() : raise exception, we assume invalid rights"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/ext/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    invoke-static {p0, p2}, Landroid/drm/DrmManagerClient;->showConsume(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;

    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_1

    .line 85
    :pswitch_2
    invoke-virtual {v0, p0, p1, p2}, Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;

    .line 86
    const/4 v3, 0x1

    .line 87
    goto :goto_1

    .line 89
    :pswitch_3
    invoke-static {p0, p2}, Landroid/drm/DrmManagerClient;->showSecureTimerInvalid(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;

    .line 90
    const/4 v3, 0x1

    .line 91
    goto :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 54
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getOriginalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->canShare(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public handleDrmFile(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)Z
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "callback"

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, handle:Z
    invoke-interface {p2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl$1;-><init>(Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;Lcom/mediatek/gallery3d/ext/IMovieDrmExtension$IMovieDrmCallback;)V

    invoke-static {p1, v1, v2}, Lcom/mediatek/gallery3d/video/MovieDrmExtensionImpl;->handleDrmFile(Landroid/content/Context;Landroid/net/Uri;Landroid/drm/DrmManagerClient$DrmOperationListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0
.end method
