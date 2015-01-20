.class public Lcom/mediatek/gallery3d/drm/DrmHelper;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# static fields
.field public static final DRM_INCLUSION:Ljava/lang/String; = "GalleryDrmInclusion"

.field public static final DRM_MICRO_THUMB_BLACK_BG:I = 0x0

.field public static final DRM_MICRO_THUMB_DEFAULT_BG:I = -0xbbbbbc

.field public static final DRM_MICRO_THUMB_IN_DIP:F = 133.33333f

.field public static final DRM_MICRO_THUMB_PIXEL_COUNT:I = 0x9c40

.field public static final INVALID_DRM_LEVEL:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

.field public static final NO_DRM_INCLUSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmHelper"

.field private static sDefaultDisplay:Landroid/view/Display;

.field public static sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

.field private static sDrmGreenLockOverlay:Landroid/graphics/Bitmap;

.field private static sDrmManagerClient:Landroid/drm/DrmManagerClient;

.field public static sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

.field private static sDrmRedLockOverlay:Landroid/graphics/Bitmap;

.field private static sIsDrmLockIconInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->IS_DRM_SUPPORTED:Z

    .line 65
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 67
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDefaultDisplay:Landroid/view/Display;

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sIsDrmLockIconInited:Z

    .line 293
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedLockOverlay:Landroid/graphics/Bitmap;

    .line 294
    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenLockOverlay:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRightsStatus(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    .line 170
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    const-string v0, "DrmHelper"

    const-string v1, "checkRightsStatus:got null file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static checkRightsStatusForTap(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    .line 181
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    const-string v0, "DrmHelper"

    const-string v1, "checkRightsStatusForTap:got null file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatusForTap(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static createBitmap(IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "config"
    .parameter "bgColor"

    .prologue
    .line 213
    if-lez p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 214
    :cond_0
    const-string v2, "DrmHelper"

    const-string v3, "createBitmap:invalid Bitmap argumentation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    .line 224
    :goto_0
    return-object v1

    .line 219
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 220
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method public static drawRightBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIF)V
    .locals 6
    .parameter "canvas"
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "scale"

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p6

    float-to-int v4, v0

    .line 268
    .local v4, texWidth:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p6

    float-to-int v5, v0

    .line 269
    .local v5, texHeight:I
    add-int v0, p2, p4

    sub-int v2, v0, v4

    add-int v0, p3, p5

    sub-int v3, v0, v5

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public static ensureBitmapMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 276
    if-nez p0, :cond_1

    move-object p0, v2

    .line 289
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 279
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    .local v0, temp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local v1, tempCanvas:Landroid/graphics/Canvas;
    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 287
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 288
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 289
    goto :goto_0
.end method

.method public static forceDecodeDrmUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "cr"
    .parameter "drmUri"
    .parameter "options"
    .parameter "consume"

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-boolean v2, Lcom/mediatek/gallery3d/drm/DrmHelper;->IS_DRM_SUPPORTED:Z

    if-nez v2, :cond_1

    .line 153
    const-string v2, "DrmHelper"

    const-string v3, "Decode Drm image when Drm is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-object v1

    .line 157
    :cond_1
    if-nez p2, :cond_2

    .line 158
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .restart local p2
    :cond_2
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    .line 165
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 166
    .local v0, tempDcfDecoder:Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static forceDecryptFile(Ljava/lang/String;Z)[B
    .locals 3
    .parameter "pathName"
    .parameter "consume"

    .prologue
    .line 350
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 354
    :goto_0
    return-object v1

    .line 353
    :cond_1
    new-instance v0, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v0}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 354
    .local v0, dcfDecoder:Lcom/mediatek/dcfdecoder/DcfDecoder;
    invoke-virtual {v0, p0, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getDrmInclusionFromData(Landroid/os/Bundle;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, drmInclusion:I
    if-nez p0, :cond_0

    move v1, v0

    .line 103
    .end local v0           #drmInclusion:I
    .local v1, drmInclusion:I
    :goto_0
    return v1

    .line 92
    .end local v1           #drmInclusion:I
    .restart local v0       #drmInclusion:I
    :cond_0
    const-string v3, "android.intent.extra.drm_level"

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, drmLevel:I
    if-eq v2, v4, :cond_1

    .line 94
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 95
    or-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_1
    move v1, v0

    .line 103
    .end local v0           #drmInclusion:I
    .restart local v1       #drmInclusion:I
    goto :goto_0

    .line 96
    .end local v1           #drmInclusion:I
    .restart local v0       #drmInclusion:I
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 97
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 98
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_1

    .line 99
    or-int/lit8 v0, v0, 0x1e

    goto :goto_1
.end method

.method public static getDrmManagerClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 194
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method public static getDrmMicroThumbDim(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 78
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDefaultDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDefaultDisplay:Landroid/view/Display;

    .line 81
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v0, metrics:Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    const v1, 0x43055555

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getDrmWhereClause(I)Ljava/lang/String;
    .locals 4
    .parameter "drmInclusion"

    .prologue
    .line 107
    and-int/lit8 p0, p0, 0x1e

    .line 108
    const/16 v2, 0x1e

    const/4 v0, 0x0

    goto :goto_0

    if-ne v2, p0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    const-string v0, "is_drm=0 OR is_drm IS NULL"

    .line 113
    .local v0, noDrmClause:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, whereClause:Ljava/lang/String;
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    .line 120
    if-nez v1, :cond_6

    const-string v1, "drm_method=1"

    .line 125
    :cond_2
    :goto_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    .line 126
    if-nez v1, :cond_7

    const-string v1, "drm_method=2"

    .line 131
    :cond_3
    :goto_2
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_4

    .line 132
    if-nez v1, :cond_8

    const-string v1, "drm_method=4"

    .line 137
    :cond_4
    :goto_3
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_5

    .line 138
    if-nez v1, :cond_9

    const-string v1, "drm_method=8"

    .line 143
    :cond_5
    :goto_4
    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_drm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v0, v1

    .line 147
    goto :goto_0

    .line 120
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 126
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 132
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 138
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "drm_method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    move-object v1, v0

    .line 143
    goto/16 :goto_5
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 358
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 361
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlay(I)Lcom/android/gallery3d/ui/Texture;
    .locals 3
    .parameter "subType"

    .prologue
    .line 228
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x2020040

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    .line 233
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenIcon:Lcom/android/gallery3d/ui/Texture;

    .line 241
    :goto_0
    return-object v0

    .line 234
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_2

    .line 236
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x2020041

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    .line 239
    :cond_2
    sget-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedIcon:Lcom/android/gallery3d/ui/Texture;

    goto :goto_0

    .line 241
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 307
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 308
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static initDrmLockIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 297
    sget-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sIsDrmLockIconInited:Z

    if-nez v0, :cond_0

    .line 298
    const v0, 0x2020041

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmRedLockOverlay:Landroid/graphics/Bitmap;

    .line 300
    const v0, 0x2020040

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getResBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmGreenLockOverlay:Landroid/graphics/Bitmap;

    .line 302
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/gallery3d/drm/DrmHelper;->sIsDrmLockIconInited:Z

    .line 304
    :cond_0
    return-void
.end method

.method public static isTimeIntervalMedia(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "action"

    .prologue
    const/4 v2, -0x1

    .line 314
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_0

    .line 315
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 317
    :cond_0
    sget-object v1, Lcom/mediatek/gallery3d/drm/DrmHelper;->sDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 318
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_2

    const-string v1, "license_start_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    const-string v1, "license_expiry_time"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v2, v1, :cond_2

    .line 321
    :cond_1
    const/4 v1, 0x1

    .line 323
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static permitShowThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 245
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 250
    const/high16 v6, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V

    .line 251
    return-void
.end method

.method public static renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIIIF)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "subType"
    .parameter "scale"

    .prologue
    .line 255
    invoke-static {p5}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getOverlay(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v1

    .line 256
    .local v1, overlay:Lcom/android/gallery3d/ui/Texture;
    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    .line 259
    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/drm/DrmHelper;->drawRightBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIF)V

    goto :goto_0
.end method

.method public static showDrmMicroThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 70
    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showProtectInfo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 198
    const-string v1, "DrmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showProtectInfo(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmManagerClient(Landroid/content/Context;)Landroid/drm/DrmManagerClient;

    move-result-object v0

    .line 204
    .local v0, drmManagerClient:Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {v0, p0, p1}, Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;

    goto :goto_0

    .line 207
    :cond_2
    const-string v1, "DrmHelper"

    const-string v2, "showProtectInfo:get drm manager client failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static supportConsume(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 340
    if-nez p0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/data/MediaItem;->isDrmMethod(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 344
    goto :goto_0
.end method
