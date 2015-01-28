.class Lcom/android/camera/FileSaver$PhotoOperator;
.super Lcom/android/camera/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;)V

    return-void
.end method


# virtual methods
.method public addRequest()V
    .locals 4

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    if-nez v1, :cond_0

    .line 348
    const-string v1, "FileSaver"

    const-string v2, "addRequest() why mData==null???"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 354
    .local v0, s:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 355
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 356
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #calls: Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V
    invoke-static {v1, p0}, Lcom/android/camera/FileSaver;->access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V

    goto :goto_0
.end method

.method public copyRequest()Lcom/android/camera/FileSaver$PhotoOperator;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Lcom/android/camera/FileSaver$PhotoOperator;

    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    invoke-direct {v0, v1}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;)V

    .line 361
    .local v0, newRequest:Lcom/android/camera/FileSaver$PhotoOperator;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 363
    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 364
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    iput v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    .line 365
    return-object v0
.end method

.method public createThumbnail(I)Lcom/android/camera/Thumbnail;
    .locals 7
    .parameter "thumbnailWidth"

    .prologue
    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, thumb:Lcom/android/camera/Thumbnail;
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 421
    iget v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    int-to-double v3, v3

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 422
    .local v1, ratio:I
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 423
    .local v0, inSampleSize:I
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    iget v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4, v0, v5}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 425
    .end local v0           #inSampleSize:I
    .end local v1           #ratio:I
    :cond_0
    invoke-static {}, Lcom/android/camera/FileSaver;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
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

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    return-object v2
.end method

.method public prepareRequest()V
    .locals 3

    .prologue
    .line 338
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 340
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 341
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 344
    :cond_0
    return-void
.end method

.method public saveRequest()V
    .locals 10

    .prologue
    .line 369
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v2

    .line 372
    .local v2, orientation:I
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    add-int/2addr v6, v2

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_2

    .line 373
    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 374
    .local v5, width:I
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 379
    .local v1, height:I
    :goto_0
    iput v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 380
    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 381
    iput v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    .line 382
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    array-length v6, v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    .line 383
    iget-object v6, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-wide v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    #calls: Lcom/android/camera/FileSaver;->createName(IJ)Ljava/lang/String;
    invoke-static {v6, v7, v8, v9}, Lcom/android/camera/FileSaver;->access$800(Lcom/android/camera/FileSaver;IJ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 384
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v6, v7}, Lcom/android/camera/Storage;->generateFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 385
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/camera/Storage;->generateFilepath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 387
    const/4 v3, 0x0

    .line 391
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V

    .line 393
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 394
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 398
    if-eqz v4, :cond_4

    .line 400
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 406
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v6, v7}, Lcom/android/camera/Storage;->generateMimetype(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 407
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v6}, Lcom/android/camera/Storage;->generateMpoType(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMpoType:I

    .line 408
    invoke-virtual {p0, p0}, Lcom/android/camera/FileSaver$RequestOperator;->saveImageToDatabase(Lcom/android/camera/FileSaver$RequestOperator;)V

    .line 409
    invoke-static {}, Lcom/android/camera/FileSaver;->access$300()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 410
    const-string v6, "FileSaver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRequest() mTempJpegRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    return-void

    .line 376
    .end local v1           #height:I
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v5           #width:I
    :cond_2
    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 377
    .restart local v5       #width:I
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .restart local v1       #height:I
    goto/16 :goto_0

    .line 401
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/io/IOException;
    const-string v6, "FileSaver"

    const-string v7, "saveRequest()"

    invoke-static {v6, v7, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 403
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 396
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "FileSaver"

    const-string v7, "Failed to write image"

    invoke-static {v6, v7, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    if-eqz v3, :cond_0

    .line 400
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 401
    :catch_2
    move-exception v0

    .line 402
    const-string v6, "FileSaver"

    const-string v7, "saveRequest()"

    invoke-static {v6, v7, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 398
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 400
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    :cond_3
    :goto_4
    throw v6

    .line 401
    :catch_3
    move-exception v0

    .line 402
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "FileSaver"

    const-string v8, "saveRequest()"

    invoke-static {v7, v8, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 398
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 395
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
