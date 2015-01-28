.class public Lcom/mediatek/gallery3d/stereo/StereoHelper;
.super Ljava/lang/Object;
.source "StereoHelper.java"


# static fields
.field public static final ATTACH_WITHOUT_CONVERSION:Ljava/lang/String; = "attachWithoutConversion"

.field public static final INCLUDED_STEREO_IMAGE:Ljava/lang/String; = "includedSteroImage"

.field public static final INVALID_BUCKET_ID:I = 0x0

.field public static final INVALID_LOCAL_PATH_END:Ljava/lang/String; = "/0"

#the value of this static final field might be set in the static constructor
.field private static final IS_MPO_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final JPS_EXTENSION:Ljava/lang/String; = "jps"

.field public static final JPS_MIME_TYPE:Ljava/lang/String; = "image/x-jps"

.field public static final JPS_MIME_TYPE2:Ljava/lang/String; = "image/jps"

.field public static final KEY_GET_NO_STEREO_IMAGE:Ljava/lang/String; = "get_no_stereo_image"

.field public static final MIN_STEREO_INPUT_HEIGHT:I = 0x3c

.field public static final MIN_STEREO_INPUT_WIDTH:I = 0x28

.field public static final PNS_MIME_TYPE:Ljava/lang/String; = "image/pns"

.field public static final STEREO_EXTRA:Ljava/lang/String; = "onlyStereoMedia"

.field public static final STEREO_INDEX_FIRST:I = 0x1

.field public static final STEREO_INDEX_NONE:I = 0x0

.field public static final STEREO_INDEX_SECOND:I = 0x2

.field public static final STEREO_LAYOUT_FULL_FRAME:I = 0x1

.field public static final STEREO_LAYOUT_LEFT_AND_RIGHT:I = 0x2

.field public static final STEREO_LAYOUT_NONE:I = 0x0

.field public static final STEREO_LAYOUT_TOP_AND_BOTTOM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "StereoHelper"

.field public static sStereoIcon:Lcom/android/gallery3d/ui/Texture;

.field private static sStereoOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isMpoSupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_MPO_SUPPORTED:Z

    .line 104
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDim(ZII)I
    .locals 1
    .parameter "dimX"
    .parameter "layout"
    .parameter "length"

    .prologue
    .line 603
    if-eqz p0, :cond_1

    .line 605
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 606
    div-int/lit8 p2, p2, 0x2

    .line 614
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 611
    .restart local p2
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 612
    div-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

.method private static adjustRect(ZZLandroid/graphics/Rect;)V
    .locals 5
    .parameter "isLeftRight"
    .parameter "firstFrame"
    .parameter "imageRect"

    .prologue
    .line 575
    if-nez p2, :cond_0

    .line 576
    const-string v0, "StereoHelper"

    const-string v1, "adjustRect:got null image rect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_0
    return-void

    .line 579
    :cond_0
    if-eqz p0, :cond_2

    .line 580
    if-eqz p1, :cond_1

    .line 581
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 585
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 589
    :cond_2
    if-eqz p1, :cond_3

    .line 590
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 594
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public static convertToLocalLayout(I)I
    .locals 1
    .parameter "mediaStoreLayout"

    .prologue
    const/4 v0, 0x0

    .line 208
    packed-switch p0, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    return v0

    .line 212
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static drawImageTypeOverlay(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 16
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 131
    sget-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_0

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200cc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    sput-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_0
    sget-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 135
    .local v12, width:I
    sget-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 136
    .local v5, height:I
    const-string v13, "StereoHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "original stereo overlay w="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", h="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    int-to-float v13, v12

    int-to-float v14, v5

    div-float v1, v13, v14

    .line 138
    .local v1, aspectRatio:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 139
    .local v3, bmpWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 140
    .local v2, bmpHeight:I
    if-ge v2, v3, :cond_2

    const/4 v6, 0x1

    .line 141
    .local v6, heightSmaller:Z
    :goto_0
    if-eqz v6, :cond_1

    move v3, v2

    .end local v3           #bmpWidth:I
    :cond_1
    div-int/lit8 v9, v3, 0x5

    .line 142
    .local v9, scaleResult:I
    if-eqz v6, :cond_3

    .line 143
    move v5, v9

    .line 144
    int-to-float v13, v9

    mul-float/2addr v13, v1

    float-to-int v12, v13

    .line 149
    :goto_1
    const-string v13, "StereoHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scaled stereo overlay w="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", h="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v7, 0x2

    .line 152
    .local v7, left:I
    add-int/lit8 v4, v2, -0x2

    .line 153
    .local v4, bottom:I
    sub-int v11, v4, v5

    .line 154
    .local v11, top:I
    add-int v8, v12, v7

    .line 155
    .local v8, right:I
    const-string v13, "StereoHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "stereo overlay drawing dimension=("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v7, v11, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v10, tmpCanvas:Landroid/graphics/Canvas;
    sget-object v13, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    return-void

    .line 140
    .end local v4           #bottom:I
    .end local v6           #heightSmaller:Z
    .end local v7           #left:I
    .end local v8           #right:I
    .end local v9           #scaleResult:I
    .end local v10           #tmpCanvas:Landroid/graphics/Canvas;
    .end local v11           #top:I
    .restart local v3       #bmpWidth:I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 146
    .end local v3           #bmpWidth:I
    .restart local v6       #heightSmaller:Z
    .restart local v9       #scaleResult:I
    :cond_3
    move v12, v9

    .line 147
    int-to-float v13, v12

    div-float/2addr v13, v1

    float-to-int v5, v13

    goto :goto_1
.end method

.method public static drawLeftBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v4

    .line 189
    .local v4, texWidth:I
    invoke-interface {p1}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v5

    .line 190
    .local v5, texHeight:I
    add-int v0, p3, p5

    sub-int v3, v0, v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public static generateSecondImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 14
    .parameter "jc"
    .parameter "bitmap"
    .parameter "params"
    .parameter "recyleBitmap"

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    const/4 v7, 0x0

    .line 464
    :goto_0
    return-object v7

    .line 410
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_1

    const/16 v0, 0x3c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 412
    :cond_1
    const-string v0, "StereoHelper"

    const-string v2, "generateSecondImage:image dimension too small"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v7, 0x0

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 417
    .local v3, originBitmapW:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 420
    .local v4, originBitmapH:I
    rem-int/lit8 v5, v3, 0x2

    .line 421
    .local v5, increaseX:I
    rem-int/lit8 v6, v4, 0x2

    .line 423
    .local v6, increaseY:I
    const/4 v9, 0x0

    .line 424
    .local v9, input:Landroid/graphics/Bitmap;
    add-int v0, v5, v6

    if-lez v0, :cond_5

    .line 425
    const-string v0, "StereoHelper"

    const-string v2, "generateSecondImage:resize before convert"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    add-int v0, v3, v5

    add-int v2, v4, v6

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 430
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v11, tempCanvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v10, v0, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 432
    .local v10, src:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/4 v2, 0x0

    int-to-float v12, v3

    int-to-float v13, v4

    invoke-direct {v8, v0, v2, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 433
    .local v8, dst:Landroid/graphics/RectF;
    const/4 v0, 0x0

    invoke-virtual {v11, p1, v10, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 439
    .end local v8           #dst:Landroid/graphics/RectF;
    .end local v10           #src:Landroid/graphics/Rect;
    .end local v11           #tempCanvas:Landroid/graphics/Canvas;
    :goto_1
    if-eqz p3, :cond_3

    if-eq p1, v9, :cond_3

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_3
    invoke-static {v9}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->convert2Dto3D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 449
    .local v1, stereo:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_4

    .line 450
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 453
    :cond_4
    if-nez v1, :cond_6

    .line 454
    const/4 v7, 0x0

    goto :goto_0

    .line 435
    .end local v1           #stereo:Landroid/graphics/Bitmap;
    :cond_5
    move-object v9, p1

    goto :goto_1

    .line 457
    .restart local v1       #stereo:Landroid/graphics/Bitmap;
    :cond_6
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 458
    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    move-object v0, p0

    move-object/from16 v2, p2

    .line 461
    invoke-static/range {v0 .. v6}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->retrieveDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;IIII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v7

    .line 463
    .local v7, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getInclusionFromData(Landroid/os/Bundle;)I
    .locals 5
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 225
    sget-boolean v4, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v4, :cond_0

    if-nez p0, :cond_3

    .line 226
    :cond_0
    sget-boolean v4, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_MPO_SUPPORTED:Z

    if-eqz v4, :cond_2

    .line 227
    const/16 v2, 0x40

    .line 252
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    const/16 v2, 0x1000

    .line 233
    .local v2, stereoInclusion:I
    or-int/lit16 v2, v2, 0x4000

    .line 234
    const-string v4, "onlyStereoMedia"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 235
    .local v1, onlyStereoMedia:Z
    const-string v4, "get-album"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 236
    .local v0, getAlbum:Z
    sget-boolean v3, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_MPO_SUPPORTED:Z

    if-eqz v3, :cond_4

    .line 237
    if-eqz v1, :cond_5

    .line 238
    or-int/lit16 v2, v2, 0x80

    .line 239
    or-int/lit16 v2, v2, 0x100

    .line 241
    or-int/lit8 v2, v2, 0x1

    .line 247
    :cond_4
    :goto_1
    if-nez v1, :cond_1

    .line 250
    const v3, 0x8000

    or-int/2addr v2, v3

    goto :goto_0

    .line 243
    :cond_5
    or-int/lit16 v2, v2, 0x3c0

    goto :goto_1
.end method

.method public static getMpoFrameIndex(ZI)I
    .locals 2
    .parameter "leftFrame"
    .parameter "frameCount"

    .prologue
    .line 393
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 394
    .local v0, frameIndex:I
    :goto_0
    if-nez p0, :cond_0

    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 398
    const/4 v0, 0x2

    .line 400
    :cond_0
    return v0

    .line 393
    .end local v0           #frameIndex:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getOverlay(I)Lcom/android/gallery3d/ui/Texture;
    .locals 3
    .parameter "subType"

    .prologue
    .line 162
    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2

    .line 164
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoIcon:Lcom/android/gallery3d/ui/Texture;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    sget-object v1, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const v2, 0x7f0200cc

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoIcon:Lcom/android/gallery3d/ui/Texture;

    .line 168
    :cond_1
    sget-object v0, Lcom/mediatek/gallery3d/stereo/StereoHelper;->sStereoIcon:Lcom/android/gallery3d/ui/Texture;

    .line 170
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStereoVideoImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"
    .parameter "originFrame"
    .parameter "firstFrame"
    .parameter "mediaStoreLayout"

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-gtz v8, :cond_2

    .line 541
    :cond_0
    const-string v6, "StereoHelper"

    const-string v8, "getStereoVideoImage:got invalid original frame"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 569
    :cond_1
    :goto_0
    return-object v0

    .line 544
    :cond_2
    invoke-static {p3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->convertToLocalLayout(I)I

    move-result v4

    .line 547
    .local v4, localLayout:I
    if-eqz v4, :cond_3

    if-ne v3, v4, :cond_4

    if-nez p2, :cond_4

    .line 549
    :cond_3
    const-string v6, "StereoHelper"

    const-string v8, "getStereoVideoImage:can not retrieve second image!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 550
    goto :goto_0

    .line 553
    :cond_4
    const/4 v8, 0x2

    if-ne v8, v4, :cond_5

    .line 554
    .local v3, isLeftRight:Z
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v5, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 557
    .local v5, src:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 560
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, p2, v5}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustRect(ZZLandroid/graphics/Rect;)V

    .line 562
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 563
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v2, v10, v10, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 564
    .local v2, dst:Landroid/graphics/RectF;
    invoke-virtual {v1, p1, v5, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 566
    if-eqz v0, :cond_1

    .line 567
    const-string v6, "StereoHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStereoVideoImage:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #dst:Landroid/graphics/RectF;
    .end local v3           #isLeftRight:Z
    .end local v5           #src:Landroid/graphics/Rect;
    :cond_5
    move v3, v6

    .line 553
    goto :goto_1
.end method

.method public static getWhereClause(I)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"

    .prologue
    const/4 v4, 0x0

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, mpoWhereClause:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_2

    .line 269
    .local v1, whereClause:Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_4

    .line 271
    if-eqz v0, :cond_0

    .line 273
    if-nez v1, :cond_2

    move-object v1, v0

    .line 276
    :cond_0
    :goto_0
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_1

    .line 278
    if-nez v1, :cond_3

    const-string v1, "(stereo_type!=0 AND stereo_type IS NOT NULL)"

    .line 310
    :cond_1
    :goto_1
    if-nez v1, :cond_8

    invoke-static {}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getHideFolderWhereClause()Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_2
    return-object v1

    .line 273
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 288
    :cond_4
    if-eqz v0, :cond_5

    .line 290
    if-nez v1, :cond_6

    move-object v1, v0

    .line 293
    :cond_5
    :goto_3
    and-int/lit16 v2, p0, 0x4000

    if-nez v2, :cond_1

    .line 295
    if-nez v1, :cond_7

    const-string v1, "(stereo_type=0 OR stereo_type IS NULL)"

    :goto_4
    goto :goto_1

    .line 290
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 295
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 310
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getHideFolderWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public static getWhereClause(IZ)Ljava/lang/String;
    .locals 5
    .parameter "mtkInclusion"
    .parameter "queryVideo"

    .prologue
    const/4 v4, 0x0

    .line 320
    invoke-static {p0}, Lcom/mediatek/gallery3d/mpo/MpoHelper;->getWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, mpoWhereClause:Ljava/lang/String;
    const/4 v1, 0x0

    .line 323
    .local v1, whereClause:Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_6

    .line 324
    if-nez p1, :cond_4

    .line 326
    if-eqz v0, :cond_0

    .line 328
    if-nez v1, :cond_2

    move-object v1, v0

    .line 331
    :cond_0
    :goto_0
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_1

    .line 333
    if-nez v1, :cond_3

    const-string v1, "mime_type=\'image/x-jps\'"

    .line 384
    :cond_1
    :goto_1
    if-nez v1, :cond_c

    invoke-static {}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getHideFolderWhereClause()Ljava/lang/String;

    move-result-object v1

    .line 389
    :goto_2
    return-object v1

    .line 328
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 333
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "image/x-jps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 339
    :cond_4
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_1

    .line 341
    if-nez v1, :cond_5

    const-string v1, "(stereo_type!=0 AND stereo_type IS NOT NULL)"

    :goto_3
    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 352
    :cond_6
    if-nez p1, :cond_a

    .line 353
    if-eqz v0, :cond_7

    .line 355
    if-nez v1, :cond_8

    move-object v1, v0

    .line 358
    :cond_7
    :goto_4
    and-int/lit16 v2, p0, 0x1000

    if-nez v2, :cond_1

    .line 360
    if-nez v1, :cond_9

    const-string v1, "mime_type!=\'image/x-jps\'"

    :goto_5
    goto/16 :goto_1

    .line 355
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 360
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mime_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "image/x-jps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 366
    :cond_a
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_1

    .line 368
    if-nez v1, :cond_b

    const-string v1, "(stereo_type=0 OR stereo_type IS NULL)"

    :goto_6
    goto/16 :goto_1

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stereo_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 384
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getHideFolderWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method public static isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 195
    if-nez p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    .line 199
    .local v0, support:I
    const/high16 v2, 0x1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/high16 v2, 0x8

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 202
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isStereoMediaFolder(Lcom/android/gallery3d/data/MediaSet;)Z
    .locals 4
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    .line 115
    if-eqz p0, :cond_0

    sget-boolean v2, Lcom/mediatek/gallery3d/stereo/StereoHelper;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 121
    .local v0, path:Lcom/android/gallery3d/data/Path;
    instance-of v2, p0, Lcom/android/gallery3d/data/LocalAlbum;

    if-nez v2, :cond_2

    instance-of v2, p0, Lcom/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static makeShareProviderIgnorAction(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v0, "StereoHelper"

    const-string v1, "make share provider ignor action!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renderSubTypeOverlay(Lcom/android/gallery3d/ui/GLCanvas;IIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "subType"

    .prologue
    .line 176
    invoke-static {p5}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->getOverlay(I)Lcom/android/gallery3d/ui/Texture;

    move-result-object v1

    .line 177
    .local v1, overlay:Lcom/android/gallery3d/ui/Texture;
    if-nez v1, :cond_0

    .line 181
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->drawLeftBottom(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIII)V

    goto :goto_0
.end method

.method private static retrieveDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;IIII)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    .locals 9
    .parameter "jc"
    .parameter "stereo"
    .parameter "params"
    .parameter "originBitmapW"
    .parameter "originBitmapH"
    .parameter "increaseX"
    .parameter "increaseY"

    .prologue
    .line 470
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 471
    :cond_0
    const-string v0, "StereoHelper"

    const-string v1, "retrieveDataBundle: got null stereo or params"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v6, 0x0

    .line 514
    :cond_1
    :goto_0
    return-object v6

    .line 475
    :cond_2
    new-instance v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    invoke-direct {v6}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;-><init>()V

    .line 478
    .local v6, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    const/4 v1, 0x1

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->retrieveStereoImage(Landroid/graphics/Bitmap;ZIIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 481
    .local v7, firstFrame:Landroid/graphics/Bitmap;
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    const/4 v6, 0x0

    goto :goto_0

    .line 485
    :cond_3
    iget-boolean v0, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFrame:Z

    if-eqz v0, :cond_5

    .line 486
    iput-object v7, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFrame:Landroid/graphics/Bitmap;

    .line 493
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 494
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->recycle()V

    .line 495
    const/4 v6, 0x0

    goto :goto_0

    .line 487
    :cond_5
    iget-boolean v0, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inFirstFullFrame:Z

    if-eqz v0, :cond_4

    .line 489
    const/4 v0, 0x1

    invoke-static {p0, v7, v0}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->firstFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    goto :goto_1

    .line 499
    :cond_6
    const/4 v1, 0x0

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->retrieveStereoImage(Landroid/graphics/Bitmap;ZIIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 501
    .local v8, secondFrame:Landroid/graphics/Bitmap;
    iget-boolean v0, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFrame:Z

    if-eqz v0, :cond_8

    .line 502
    iput-object v8, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFrame:Landroid/graphics/Bitmap;

    .line 509
    :cond_7
    :goto_2
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->recycle()V

    .line 511
    const/4 v6, 0x0

    goto :goto_0

    .line 503
    :cond_8
    iget-boolean v0, p2, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inSecondFullFrame:Z

    if-eqz v0, :cond_7

    .line 505
    const/4 v0, 0x1

    invoke-static {p0, v8, v0}, Lcom/mediatek/gallery3d/data/DecodeHelper;->getRegionDecoder(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Z)Lcom/mediatek/gallery3d/data/RegionDecoder;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->secondFullFrame:Lcom/mediatek/gallery3d/data/RegionDecoder;

    goto :goto_2
.end method

.method private static retrieveStereoImage(Landroid/graphics/Bitmap;ZIIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "stereo"
    .parameter "first"
    .parameter "originBitmapW"
    .parameter "originBitmapH"
    .parameter "increaseX"
    .parameter "increaseY"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 519
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 524
    .local v4, temp:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 525
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz p1, :cond_0

    move v5, v6

    .line 527
    .local v5, x:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 529
    .local v2, right:I
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    sub-int v7, v2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, p5

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 531
    .local v3, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v6, p2

    int-to-float v7, p3

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 532
    .local v1, dst:Landroid/graphics/RectF;
    const/4 v6, 0x0

    invoke-virtual {v0, p0, v3, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 533
    return-object v4

    .line 525
    .end local v1           #dst:Landroid/graphics/RectF;
    .end local v2           #right:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local v5           #x:I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    goto :goto_0

    .line 527
    .restart local v5       #x:I
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1
.end method
