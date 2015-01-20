.class public Lcom/mediatek/gallery3d/util/MediatekFeature;
.super Ljava/lang/Object;
.source "MediatekFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;,
        Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    }
.end annotation


# static fields
.field public static final ALL_DRM_MEDIA:I = 0x1e

.field public static final ALL_MPO_MEDIA:I = 0x3c0

.field private static final CPU_CORE_NUM:I = 0x2

.field private static final CURSOR_MIMETYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final CURSOR_MIMETYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final CUSTOMIZED_FOR_MEDIA3D:Z = true

.field private static final CUSTOMIZED_FOR_MY_FAVORITE:Z = true

.field private static final CUSTOMIZED_FOR_VLW:Z = true

.field public static final EXCLUDE_DEFAULT_MEDIA:I = 0x1

.field public static final EXTRA_ENABLE_VIDEO_LIST:Ljava/lang/String; = "mediatek.intent.extra.ENABLE_VIDEO_LIST"

.field private static final GIF_BG_COLOR:I = -0x1

.field public static final INCLUDE_CD_DRM_MEDIA:I = 0x4

.field public static final INCLUDE_FLDCF_DRM_MEDIA:I = 0x10

.field public static final INCLUDE_FL_DRM_MEDIA:I = 0x2

.field public static final INCLUDE_MPO_3D:I = 0x80

.field public static final INCLUDE_MPO_3D_PAN:I = 0x100

.field public static final INCLUDE_MPO_MAV:I = 0x40

.field public static final INCLUDE_MPO_UNKNOWN:I = 0x200

.field public static final INCLUDE_SD_DRM_MEDIA:I = 0x8

.field public static final INCLUDE_STEREO_FOLDER:I = 0x8000

.field public static final INCLUDE_STEREO_JPS:I = 0x1000

.field public static final INCLUDE_STEREO_PNS:I = 0x2000

.field public static final INCLUDE_STEREO_VIDEO:I = 0x4000

.field private static final IS_SUPPORT_THEMEMANAGER:Z = true

.field private static final JPEG_LENGTH_MAX:I = 0x2000

.field private static final MAV_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MAV"

.field public static final MIMETYPE_GIF:Ljava/lang/String; = "image/gif"

.field private static final MIMETYPE_IMAGE_ALL:Ljava/lang/String; = "image/*"

.field public static final MIMETYPE_MPO:Ljava/lang/String; = "image/mpo"

.field private static final MIMETYPE_VIDEO_ALL:Ljava/lang/String; = "video/*"

.field public static final MTK_CHANGE_PICK_CROP_FLOW:Z = true

.field public static final STEREO_DISPLAY_INVALID_PASS:I = -0x1

.field public static final STEREO_DISPLAY_LEFT_PASS:I = 0x1

.field public static final STEREO_DISPLAY_RIGHT_PASS:I = 0x2

.field private static final SUPPORT_BT_PRINT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_DISPLAY_2D_AS_3D:Z = false

.field private static final SUPPORT_DRM:Z = true

.field private static final SUPPORT_GIF_ANIMATION:Z = true

.field private static final SUPPORT_MAV:Z = true

.field private static final SUPPORT_MPO:Z = true

.field private static final SUPPORT_PICTURE_QUALITY_ENHANCE:Z = true

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_STEREO_DISPLAY:Z = false

.field private static final TAG:Ljava/lang/String; = "MediatekFeature"

.field public static sContext:Landroid/content/Context;

.field public static sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

.field public static sIsImageOptionsPrepared:Z

.field private static sMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->isSupport3d()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_STEREO_DISPLAY:Z

    .line 93
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_STEREO_DISPLAY:Z

    sput-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_DISPLAY_2D_AS_3D:Z

    .line 750
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    .line 751
    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    .line 854
    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method public static addMtkInclusion(Landroid/net/Uri;Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 606
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 607
    :cond_0
    const-string v0, "MediatekFeature"

    const-string v1, "addMtkInclusion:invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_1
    :goto_0
    return-object p0

    .line 610
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "mtkInclusion"

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 614
    const-string v0, "MediatekFeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMtkInclusion:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static allStereoSubType()I
    .locals 1

    .prologue
    .line 1174
    const/16 v0, 0xf0

    return v0
.end method

.method public static checkForOtherPickActions(Lcom/android/gallery3d/app/PickerActivity;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 8
    .parameter "activity"
    .parameter "data"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, mimeType:Ljava/lang/String;
    const-string v5, "video/*"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vnd.android.cursor.dir/video"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    move v2, v4

    .line 794
    .local v2, pickVideo:Z
    :goto_0
    const-string v5, "image/*"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "vnd.android.cursor.dir/image"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v1, v4

    .line 796
    .local v1, pickImage:Z
    :goto_1
    if-eqz v2, :cond_7

    .line 797
    const-string v5, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    return v3

    .end local v1           #pickImage:Z
    .end local v2           #pickVideo:Z
    :cond_5
    move v2, v3

    .line 792
    goto :goto_0

    .restart local v2       #pickVideo:Z
    :cond_6
    move v1, v3

    .line 794
    goto :goto_1

    .line 799
    .restart local v1       #pickImage:Z
    :cond_7
    if-eqz v1, :cond_2

    .line 800
    const-string v5, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createGifDecoder(Ljava/io/FileDescriptor;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "fd"

    .prologue
    .line 965
    if-nez p0, :cond_0

    .line 966
    const/4 v0, 0x0

    .line 968
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/io/FileDescriptor;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static createGifDecoder(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "is"

    .prologue
    .line 958
    if-nez p0, :cond_0

    .line 959
    const/4 v0, 0x0

    .line 961
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/io/InputStream;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static createGifDecoder(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 951
    if-nez p0, :cond_0

    .line 952
    const/4 v0, 0x0

    .line 954
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;->createGifDecoderWrapper(Ljava/lang/String;)Lcom/mediatek/gallery3d/gif/GifDecoderWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public static cropToFitAspectRatio(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "recycleInput"

    .prologue
    .line 706
    const-string v12, "MediatekFeature"

    const-string v13, "cropToRetainAspectRatio"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 708
    :cond_0
    const/16 p0, 0x0

    .line 745
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 710
    .restart local p0
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 711
    .local v11, srcWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 712
    .local v8, srcHeight:I
    int-to-float v12, v11

    int-to-float v13, v8

    div-float v9, v12, v13

    .line 713
    .local v9, srcRatio:F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v3, v12, v13

    .line 714
    .local v3, destRatio:F
    const-string v12, "MediatekFeature"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " srcRatio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", destRatio="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    cmpl-float v12, v9, v3

    if-eqz v12, :cond_1

    .line 718
    move v5, v11

    .line 719
    .local v5, destWidth:I
    move v2, v8

    .line 720
    .local v2, destHeight:I
    move-object/from16 v6, p0

    .line 721
    .local v6, ret:Landroid/graphics/Bitmap;
    cmpl-float v12, v9, v3

    if-lez v12, :cond_4

    const/4 v7, 0x1

    .line 722
    .local v7, shouldCropWidth:Z
    :goto_1
    const/4 v10, 0x0

    .line 723
    .local v10, srcRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 724
    .local v4, destRect:Landroid/graphics/Rect;
    if-eqz v7, :cond_5

    .line 726
    int-to-float v12, v8

    mul-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 727
    move v2, v8

    .line 728
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #srcRect:Landroid/graphics/Rect;
    sub-int v12, v11, v5

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    add-int v14, v11, v5

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v10, v12, v13, v14, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 737
    .restart local v10       #srcRect:Landroid/graphics/Rect;
    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #destRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v4, v12, v13, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 738
    .restart local v4       #destRect:Landroid/graphics/Rect;
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 739
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 740
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v10, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 742
    if-eqz p3, :cond_3

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object/from16 p0, v6

    .line 745
    goto :goto_0

    .line 721
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v4           #destRect:Landroid/graphics/Rect;
    .end local v7           #shouldCropWidth:Z
    .end local v10           #srcRect:Landroid/graphics/Rect;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 732
    .restart local v4       #destRect:Landroid/graphics/Rect;
    .restart local v7       #shouldCropWidth:Z
    .restart local v10       #srcRect:Landroid/graphics/Rect;
    :cond_5
    int-to-float v12, v11

    div-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 733
    move v5, v11

    .line 734
    new-instance v10, Landroid/graphics/Rect;

    .end local v10           #srcRect:Landroid/graphics/Rect;
    const/4 v12, 0x0

    sub-int v13, v8, v2

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v8, 0x2

    div-int/lit8 v15, v2, 0x2

    add-int/2addr v14, v15

    invoke-direct {v10, v12, v13, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v10       #srcRect:Landroid/graphics/Rect;
    goto :goto_2
.end method

.method public static doesMaxEqualMin(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1103
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    .line 1106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static drawImageTypeOverlay(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "imgUri"
    .parameter "mimeType"
    .parameter "bitmap"

    .prologue
    .line 621
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 623
    :cond_0
    const-string v2, "MediatekFeature"

    const-string v3, "drawImageTypeOverlay:invalid params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    const/4 v0, 0x0

    .line 643
    .local v0, isMAV:Z
    const/4 v1, 0x0

    .line 644
    .local v1, isStereoImage:Z
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "image/pns"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/x-jps"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "image/mpo"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 648
    :cond_3
    const/4 v1, 0x1

    .line 651
    :cond_4
    if-eqz v0, :cond_5

    .line 653
    invoke-static {p0, p3}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 656
    :cond_5
    if-eqz v1, :cond_1

    .line 658
    invoke-static {p0, p3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static drawWidgetImageTypeOverlay(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 822
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mime_type"

    aput-object v0, v2, v12

    const-string v0, "stereo_type"

    #aput-object v0, v2, v11

    .line 828
    .local v2, columns:[Ljava/lang/String;
    const-string v9, ""

    .line 829
    .local v9, mimeType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 830
    .local v10, stereoType:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 832
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 833
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 835
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 837
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_3
    if-eqz v10, :cond_5

    move v8, v11

    .line 841
    .local v8, isStereo:Z
    :goto_1
    const-string v0, "image/mpo"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v8, :cond_6

    move v7, v11

    .line 843
    .local v7, isMAV:Z
    :goto_2
    if-eqz v7, :cond_4

    .line 844
    invoke-static {p0, p2}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 847
    :cond_4
    if-eqz v8, :cond_0

    .line 848
    invoke-static {p0, p2}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v7           #isMAV:Z
    .end local v8           #isStereo:Z
    :cond_5
    move v8, v12

    .line 840
    goto :goto_1

    .restart local v8       #isStereo:Z
    :cond_6
    move v7, v12

    .line 841
    goto :goto_2
.end method

.method public static enablePictureQualityEnhance(Landroid/graphics/BitmapFactory$Options;Z)V
    .locals 1
    .parameter "options"
    .parameter "suggestEnhance"

    .prologue
    .line 1147
    if-nez p0, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1151
    :cond_0
    if-eqz p1, :cond_1

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    goto :goto_0

    .line 1154
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    goto :goto_0
.end method

.method public static enablePictureQualityEnhance(Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)V
    .locals 1
    .parameter "params"
    .parameter "suggestEnhance"

    .prologue
    .line 1160
    if-nez p0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1164
    :cond_0
    if-eqz p1, :cond_1

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    goto :goto_0

    .line 1167
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inPQEnhance:Z

    goto :goto_0
.end method

.method public static getAddedMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "extension"

    .prologue
    const/4 v0, 0x0

    .line 562
    if-nez p0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-object v0

    .line 565
    :cond_1
    const-string v1, "mpo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const-string v0, "image/mpo"

    goto :goto_0

    .line 567
    :cond_2
    const-string v1, "jps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const-string v0, "image/x-jps"

    goto :goto_0
.end method

.method public static getCpuCoreNum()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x2

    return v0
.end method

.method public static getGifBackgroundColor()I
    .locals 1

    .prologue
    .line 927
    const/4 v0, -0x1

    return v0
.end method

.method public static getImageOptions()Lcom/mediatek/gallery3d/ext/IImageOptions;
    .locals 1

    .prologue
    .line 773
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 774
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 776
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/mediatek/gallery3d/ext/ImageOptions;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/ext/ImageOptions;-><init>()V

    goto :goto_0
.end method

.method public static getInclusionFromData(Landroid/os/Bundle;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 478
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmInclusionFromData(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {p0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getInclusionFromData(Landroid/os/Bundle;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getMinimalScale(FFIII)F
    .locals 6
    .parameter "viewW"
    .parameter "viewH"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "subType"

    .prologue
    .line 1092
    invoke-static {p4}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1094
    const-wide v2, 0x40e3880000000000L

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1097
    .local v0, scale:D
    double-to-float v2, v0

    .line 1099
    .end local v0           #scale:D
    :goto_0
    return v2

    :cond_0
    int-to-float v2, p2

    div-float v2, p0, v2

    int-to-float v3, p3

    div-float v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0
.end method

.method public static getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 1008
    if-nez p0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-object v1

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    .line 1013
    .local v2, subType:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->needMtkScreenNail(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .line 1015
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 1016
    .local v0, height:I
    new-instance v1, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    invoke-direct {v1, v3, v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;-><init>(II)V

    .line 1018
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_0
.end method

.method public static getMtkScreenNail(Lcom/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 5
    .parameter "item"
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 988
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-object v1

    .line 992
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v2

    .line 993
    .local v2, subType:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->needMtkScreenNail(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v3

    .line 996
    .local v3, width:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    .line 998
    .local v0, height:I
    :goto_2
    new-instance v1, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    invoke-direct {v1, p1, v3, v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;-><init>(Landroid/graphics/Bitmap;II)V

    .line 1000
    .local v1, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    goto :goto_0

    .line 994
    .end local v0           #height:I
    .end local v1           #mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    .end local v3           #width:I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_1

    .line 996
    .restart local v3       #width:I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_2
.end method

.method public static getOnlyStereoWhereClause(I)Ljava/lang/String;
    .locals 2
    .parameter "drmInclusion"

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, stereoInclusion:I
    or-int/lit16 v0, v0, 0x4000

    .line 553
    or-int/lit16 v0, v0, 0x80

    .line 554
    or-int/lit16 v0, v0, 0x100

    .line 555
    or-int/lit16 v0, v0, 0x1000

    .line 557
    or-int/lit8 v0, v0, 0x1

    .line 558
    or-int/lit16 v1, p0, 0x5181

    invoke-static {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOnlyStereoWhereClause(IZ)Ljava/lang/String;
    .locals 2
    .parameter "drmInclusion"
    .parameter "queryVideo"

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, stereoInclusion:I
    if-eqz p1, :cond_0

    .line 540
    or-int/lit16 v0, v0, 0x4000

    .line 547
    :goto_0
    or-int/lit8 v0, v0, 0x1

    .line 548
    or-int v1, v0, p0

    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 542
    :cond_0
    or-int/lit16 v0, v0, 0x80

    .line 543
    or-int/lit16 v0, v0, 0x100

    .line 544
    or-int/lit16 v0, v0, 0x1000

    goto :goto_0
.end method

.method public static getPhotoWidgetInclusion()I
    .locals 2

    .prologue
    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, mtkInclusion:I
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    or-int/lit8 v0, v0, 0x2

    .line 580
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 581
    or-int/lit8 v0, v0, 0x40

    .line 582
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    or-int/lit16 v0, v0, 0x80

    .line 584
    or-int/lit16 v0, v0, 0x100

    .line 585
    or-int/lit16 v0, v0, 0x1000

    .line 586
    or-int/lit16 v0, v0, 0x2000

    .line 589
    or-int/lit16 v0, v0, 0x4000

    .line 599
    :cond_1
    :goto_0
    return v0

    .line 592
    :cond_2
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    or-int/lit16 v0, v0, 0x2000

    .line 596
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0
.end method

.method public static getScreenNailSubType(Lcom/android/gallery3d/ui/ScreenNail;)I
    .locals 1
    .parameter "screenNail"

    .prologue
    .line 1034
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1035
    check-cast p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    .end local p0
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v0

    .line 1037
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSizeForSubtype(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 4
    .parameter "screenNail"

    .prologue
    const/4 v1, 0x0

    .line 1057
    if-nez p0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-object v1

    .line 1060
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1061
    .local v0, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    .line 1065
    .local v2, subType:I
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 1068
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    .line 1069
    .local v1, size:Lcom/android/gallery3d/ui/PhotoView$Size;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 1070
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public static getWhereClause(I)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"

    .prologue
    .line 485
    invoke-static {p0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getWhereClause(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, whereClauseStereo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 491
    .local v0, whereClauseDrm:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, whereGroup:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 498
    if-nez v2, :cond_2

    move-object v2, v0

    .line 502
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 503
    if-nez v2, :cond_3

    move-object v2, v1

    .line 506
    :cond_1
    :goto_1
    return-object v2

    .line 498
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 503
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getWhereClause(IZ)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"
    .parameter "queryVideo"

    .prologue
    .line 512
    invoke-static {p0, p1}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, whereClauseStereo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 519
    .local v0, whereClauseDrm:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->getDrmWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, whereGroup:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    if-nez v2, :cond_2

    move-object v2, v0

    .line 530
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 531
    if-nez v2, :cond_3

    move-object v2, v1

    .line 534
    :cond_1
    :goto_1
    return-object v2

    .line 526
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 531
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static handleMavPlayback(Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 884
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getSubType()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->playMpo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 886
    const/4 v0, 0x1

    .line 888
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCustomizedForMedia3D()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public static hasCustomizedForMyFavorite()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public static hasCustomizedForVLW()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 203
    sput-object p0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method public static insertBucketIdForPickActions(Lcom/android/gallery3d/data/MediaSet;Landroid/content/Intent;)V
    .locals 2
    .parameter "targetSet"
    .parameter "result"

    .prologue
    .line 810
    instance-of v1, p0, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, bucketId:Ljava/lang/String;
    const-string v1, "bucketId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isBluetoothPrintSupported()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplay2dAs3dSupported()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_DISPLAY_2D_AS_3D:Z

    return v0
.end method

.method public static isDrmSupported()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public static isGifAnimationSupported()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public static isGifSupported()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public static isMAVSupported()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public static isMpoSupported()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static isOutOfLimitation(Ljava/lang/String;II)Z
    .locals 2
    .parameter "mimeType"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x2000

    .line 1192
    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt p1, v1, :cond_0

    if-le p2, v1, :cond_1

    .line 1194
    :cond_0
    const/4 v0, 0x1

    .line 1196
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPictureQualityEnhanceSupported()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public static isStereoDisplaySupported()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_STEREO_DISPLAY:Z

    return v0
.end method

.method public static isStereoImage(Lcom/android/gallery3d/data/MediaObject;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1132
    sget-boolean v2, Lcom/mediatek/gallery3d/util/MediatekFeature;->SUPPORT_STEREO_DISPLAY:Z

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v1

    .line 1135
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 1136
    .local v0, operation:I
    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 1138
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportedByGifDecoder(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 915
    if-nez p0, :cond_0

    .line 916
    const/4 v0, 0x0

    .line 919
    :goto_0
    return v0

    .line 918
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 919
    const-string v0, "image/gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isThemeManagerSupported()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public static minScaleLimit(I)F
    .locals 1
    .parameter "subType"

    .prologue
    .line 1118
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->preferDisplayOriginSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    const/high16 v0, 0x3f80

    .line 1121
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public static needMtkScreenNail(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 975
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    const/4 v0, 0x1

    .line 980
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static permitShowThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 984
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->permitShowThumb(I)Z

    move-result v0

    return v0
.end method

.method public static playMpo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 898
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.action.VIEW_MAV"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, i:Landroid/content/Intent;
    const-string v2, "image/mpo"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MediatekFeature"

    const-string v3, "Unable to open mpo file: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static preferDisplayOriginSize(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1111
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    .line 1112
    const/4 v0, 0x1

    .line 1114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preferDisplayOriginalSize()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 170
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IImageOptions;->shouldUseOriginalSize()Z

    move-result v0

    goto :goto_0
.end method

.method public static preferGoTopWhenBack()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->prepareImageOptions(Landroid/content/Context;)V

    .line 191
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IImageOptions;->shouldReturnTopWhenBack()Z

    move-result v0

    goto :goto_0
.end method

.method public static prepareImageOptions(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 755
    if-nez p0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    if-nez v1, :cond_0

    .line 760
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IImageOptions;

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    .line 762
    const-string v1, "MediatekFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareImageOptions:sImageOptions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sIsImageOptionsPrepared:Z

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 765
    const-string v1, "MediatekFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareImageOptions:JE happened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v1, Lcom/mediatek/gallery3d/ext/ImageOptions;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/ext/ImageOptions;-><init>()V

    sput-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sImageOptions:Lcom/mediatek/gallery3d/ext/IImageOptions;

    goto :goto_1
.end method

.method public static renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 12
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 857
    if-nez p4, :cond_0

    .line 880
    :goto_0
    return-void

    .line 864
    :cond_0
    const/4 v11, 0x1

    .line 865
    .local v11, isMav:Z
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v11, v0

    .line 866
    if-eqz v11, :cond_2

    .line 867
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_1

    .line 868
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02008e

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 870
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x5

    .line 872
    .local v4, side:I
    sget-object v0, Lcom/mediatek/gallery3d/util/MediatekFeature;->sMavOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v1, p2, v4

    div-int/lit8 v2, v1, 0x2

    sub-int v1, p3, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 876
    .end local v4           #side:I
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lcom/mediatek/gallery3d/drm/DrmHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V

    .line 879
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V

    goto :goto_0

    .line 865
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static replaceBitmapBgColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "b"
    .parameter "color"
    .parameter "recycleInput"

    .prologue
    const/4 v3, 0x0

    .line 667
    if-nez p0, :cond_0

    move-object p0, v3

    .line 700
    .end local p0
    :goto_0
    return-object p0

    .line 670
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_1

    .line 671
    const-string v3, "MediatekFeature"

    const-string v4, "replaceBitmapBgColor:Bitmap has no alpha, no bother"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_3

    .line 677
    :cond_2
    const-string v3, "MediatekFeature"

    const-string v4, "replaceBitmapBgColor:invalid Bitmap dimension"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_3
    const/4 v0, 0x0

    .line 682
    .local v0, b2:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 689
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 691
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 693
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 695
    if-eqz p2, :cond_4

    .line 696
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 697
    const/4 p0, 0x0

    :cond_4
    move-object p0, v0

    .line 700
    goto :goto_0

    .line 684
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "MediatekFeature"

    const-string v4, "failed to create new bitmap for replacing gif background: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static replaceGifBackGround(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "filePath"

    .prologue
    .line 931
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 938
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 934
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static replaceGifBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 944
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->replaceBitmapBgColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static showDrmMicroThumb(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 1126
    invoke-static {p0}, Lcom/mediatek/gallery3d/drm/DrmHelper;->showDrmMicroThumb(I)Z

    move-result v0

    return v0
.end method

.method public static syncSubType(Lcom/android/gallery3d/ui/ScreenNail;Lcom/android/gallery3d/ui/ScreenNail;)Z
    .locals 5
    .parameter "target"
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 1077
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1078
    :cond_0
    const-string v3, "MediatekFeature"

    const-string v4, "syncSubType:why we got null target or source"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_1
    :goto_0
    return v2

    .line 1081
    :cond_2
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v1

    .line 1082
    .local v1, mtkTarget:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1083
    .local v0, mtkSource:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->setSubType(I)V

    .line 1085
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static themeMainColor()I
    .locals 2

    .prologue
    .line 179
    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v1

    .line 183
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    .locals 1
    .parameter "screenNail"

    .prologue
    .line 1026
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    if-eqz v0, :cond_0

    .line 1027
    check-cast p0, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    .line 1029
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static updateSizeForSubtype(Lcom/android/gallery3d/ui/PhotoView$Size;Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 3
    .parameter "size"
    .parameter "screenNail"

    .prologue
    .line 1042
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gallery3d/util/MediatekFeature;->toMtkScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;

    move-result-object v0

    .line 1046
    .local v0, mtkScreenNail:Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;
    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getSubType()I

    move-result v1

    .line 1050
    .local v1, subType:I
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginWidth()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 1052
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/ui/MtkBitmapScreenNail;->getOriginHeight()I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method
