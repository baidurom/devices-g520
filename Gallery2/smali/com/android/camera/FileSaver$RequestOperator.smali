.class abstract Lcom/android/camera/FileSaver$RequestOperator;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/android/camera/SaveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RequestOperator"
.end annotation


# instance fields
.field mData:[B

.field mDataSize:J

.field mDateTaken:J

.field mDisplayName:Ljava/lang/String;

.field mDuration:J

.field mFilePath:Ljava/lang/String;

.field mFileType:I

.field mHeight:I

.field mIgnoreThumbnail:Z

.field mListener:Lcom/android/camera/FileSaver$FileSaverListener;

.field mLocation:Landroid/location/Location;

.field mMimeType:Ljava/lang/String;

.field mMpoType:I

.field mOrientation:I

.field mResolution:Ljava/lang/String;

.field mStereoType:I

.field mTempFilePath:Ljava/lang/String;

.field mTempJpegRotation:I

.field mTempOutputFileFormat:I

.field mTempPictureType:I

.field mTitle:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field mWidth:I

.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;)V

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isIgnoreThumbnail()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    return v0
.end method

.method public notifyListener()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    invoke-interface {v0, p0}, Lcom/android/camera/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/camera/SaveRequest;)V

    .line 284
    :cond_0
    return-void
.end method

.method public saveImageToDatabase(Lcom/android/camera/FileSaver$RequestOperator;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 288
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 289
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "_display_name"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "datetaken"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "_data"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "_size"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    const-string v2, "stereo_type"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    iget-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 297
    const-string v2, "latitude"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 298
    const-string v2, "longitude"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 300
    :cond_0
    const-string v2, "orientation"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v2, "width"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v2, "height"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v2, "mpo_type"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mMpoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    .line 306
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 313
    .local v0, th:Ljava/lang/Throwable;
    const-string v2, "FileSaver"

    const-string v3, "Failed to write MediaStore"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    .line 255
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDuration:J

    .line 259
    return-void
.end method

.method public setIgnoreThumbnail(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    .line 231
    return-void
.end method

.method public setJpegRotation(I)V
    .locals 3
    .parameter "jpegRotation"

    .prologue
    .line 266
    invoke-static {}, Lcom/android/camera/FileSaver;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRotation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iput p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    .line 270
    return-void
.end method

.method public setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOperator(mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTempFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIgnoreThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
