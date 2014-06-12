.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;
.super Ljava/lang/Object;
.source "PictureQualityTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeImage"
.end annotation


# instance fields
.field private needDecodeBound:Z

.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public caculateInSampleSize(Ljava/lang/String;II)I
    .locals 6
    .parameter "pqUri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 699
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 700
    .local v2, targetSize:I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->getMineType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, mMineType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 702
    invoke-static {v0}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    const/16 v2, 0x3c0

    .line 706
    :cond_0
    int-to-float v3, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 707
    .local v1, scale:F
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 708
    const-string v3, "PictureQualityTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pq  options.inSampleSize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v5, v5, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "targetSize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return v3
.end method

.method public getMineType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "mUri"

    .prologue
    .line 712
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 716
    .local v8, mMineType:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 725
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMineType===== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 733
    :goto_0
    return-object v8

    .line 728
    :catch_0
    move-exception v7

    .line 729
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ ]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 669
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->needDecodeBound:Z

    if-eqz v3, :cond_1

    .line 670
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 673
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 675
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v5, v5, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->pqUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v6, v6, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 682
    .local v2, width:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 683
    .local v1, height:I
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 684
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v4, v4, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->pqUri:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, v1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->caculateInSampleSize(Ljava/lang/String;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 688
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 689
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #getter for: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v4, v4, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setInsampleSize(I)V

    .line 692
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 694
    .end local v1           #height:I
    .end local v2           #width:I
    :cond_1
    iput-boolean v7, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->needDecodeBound:Z

    .line 695
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    #calls: Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onReDisplayPQImage()V
    invoke-static {v3}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->access$800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    .line 696
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "wjx4"

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 679
    .local v0, e:Ljava/io/IOException;
    const-string v3, "wjx4"

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #height:I
    .restart local v2       #width:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    iget-object v3, v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1
.end method

.method public setNeedDecodeBound(Z)V
    .locals 0
    .parameter "needDecodeBound"

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->needDecodeBound:Z

    .line 665
    return-void
.end method
