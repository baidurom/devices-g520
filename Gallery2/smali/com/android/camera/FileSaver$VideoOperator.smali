.class Lcom/android/camera/FileSaver$VideoOperator;
.super Lcom/android/camera/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .line 502
    iput p2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    .line 503
    iput-object p3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mResolution:Ljava/lang/String;

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;ILjava/lang/String;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/FileSaver$VideoOperator;-><init>(Lcom/android/camera/FileSaver;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRequest()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #calls: Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V
    invoke-static {v0, p0}, Lcom/android/camera/FileSaver;->access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V

    .line 522
    return-void
.end method

.method public createThumbnail(I)Lcom/android/camera/Thumbnail;
    .locals 4
    .parameter "thumbnailWidth"

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, thumb:Lcom/android/camera/Thumbnail;
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 562
    .local v1, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 563
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 566
    .end local v1           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public prepareRequest()V
    .locals 5

    .prologue
    .line 507
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 509
    iget-object v1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-wide v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    #calls: Lcom/android/camera/FileSaver;->createName(IJ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/FileSaver;->access$800(Lcom/android/camera/FileSaver;IJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    #calls: Lcom/android/camera/FileSaver;->convertOutputFormatToFileExt(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/camera/FileSaver;->access$900(Lcom/android/camera/FileSaver;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 511
    iget-object v1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    #calls: Lcom/android/camera/FileSaver;->convertOutputFormatToMimeType(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FileSaver;->access$1000(Lcom/android/camera/FileSaver;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 512
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/Storage;->generateFilepath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 513
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

    .line 514
    iget-object v1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 515
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 516
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 518
    :cond_0
    return-void
.end method

.method public saveRequest()V
    .locals 8

    .prologue
    .line 527
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, temp:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    .local v0, file:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    .line 532
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 533
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v4, "_display_name"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v4, "datetaken"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v4, "mime_type"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v4, "_size"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 539
    const-string v4, "stereo_type"

    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_0

    .line 541
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 542
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 544
    :cond_0
    const-string v4, "resolution"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mResolution:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v4, "duration"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    iget-object v4, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/camera/FileSaver;->access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    .line 547
    iget-object v4, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v4}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v0           #file:Ljava/io/File;
    .end local v1           #temp:Ljava/io/File;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v2

    .line 554
    .local v2, th:Ljava/lang/Throwable;
    const-string v4, "FileSaver"

    const-string v5, "Failed to write MediaStore"

    invoke-static {v4, v5, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
