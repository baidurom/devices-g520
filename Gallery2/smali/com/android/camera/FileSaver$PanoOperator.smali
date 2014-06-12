.class Lcom/android/camera/FileSaver$PanoOperator;
.super Lcom/android/camera/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;I)V
    .locals 1
    .parameter
    .parameter "pictureType"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/camera/FileSaver$PanoOperator;->this$0:Lcom/android/camera/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .line 435
    iput p2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;ILcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FileSaver$PanoOperator;-><init>(Lcom/android/camera/FileSaver;I)V

    return-void
.end method


# virtual methods
.method public addRequest()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/camera/FileSaver$PanoOperator;->this$0:Lcom/android/camera/FileSaver;

    #calls: Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V
    invoke-static {v0, p0}, Lcom/android/camera/FileSaver;->access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V

    .line 453
    return-void
.end method

.method public createThumbnail(I)Lcom/android/camera/Thumbnail;
    .locals 7
    .parameter "thumbnailWidth"

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, thumb:Lcom/android/camera/Thumbnail;
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 488
    iget v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    int-to-double v3, v3

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 489
    .local v1, ratio:I
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 490
    .local v0, inSampleSize:I
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/camera/Thumbnail;->createThumbnail(Ljava/lang/String;IILandroid/net/Uri;I)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 492
    .end local v0           #inSampleSize:I
    .end local v1           #ratio:I
    :cond_0
    invoke-static {}, Lcom/android/camera/FileSaver;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    const-string v3, "FileSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    return-object v2
.end method

.method public prepareRequest()V
    .locals 5

    .prologue
    .line 439
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 441
    iget-object v1, p0, Lcom/android/camera/FileSaver$PanoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 442
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 443
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FileSaver$PanoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-wide v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    #calls: Lcom/android/camera/FileSaver;->createName(IJ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/FileSaver;->access$800(Lcom/android/camera/FileSaver;IJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v1, v2}, Lcom/android/camera/Storage;->generateFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 447
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/Storage;->generateFilepath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public saveRequest()V
    .locals 10

    .prologue
    .line 457
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v4, temp:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 459
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 460
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/camera/FileSaver$PanoOperator;->setIgnoreThumbnail(Z)V

    .line 461
    const-string v6, "FileSaver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad file created by native layer, delete it! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 465
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    .line 467
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, exif:Landroid/media/ExifInterface;
    invoke-static {v1}, Lcom/android/camera/Util;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result v3

    .line 469
    .local v3, orientation:I
    const-string v6, "ImageWidth"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 470
    .local v5, width:I
    const-string v6, "ImageLength"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 471
    .local v2, height:I
    iput v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 472
    iput v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 473
    iput v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #height:I
    .end local v3           #orientation:I
    .end local v5           #width:I
    :goto_1
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v6, v7}, Lcom/android/camera/Storage;->generateMimetype(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 478
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v6}, Lcom/android/camera/Storage;->generateMpoType(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMpoType:I

    .line 480
    invoke-virtual {p0, p0}, Lcom/android/camera/FileSaver$PanoOperator;->saveImageToDatabase(Lcom/android/camera/FileSaver$RequestOperator;)V

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, ex:Ljava/io/IOException;
    const-string v6, "FileSaver"

    const-string v7, "cannot read exif"

    invoke-static {v6, v7, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
