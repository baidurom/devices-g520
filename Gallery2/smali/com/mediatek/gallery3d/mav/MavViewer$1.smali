.class Lcom/mediatek/gallery3d/mav/MavViewer$1;
.super Ljava/lang/Object;
.source "MavViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/mav/MavViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/mav/MavViewer;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MavViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$100(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/gallery3d/mav/MavViewer$1$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/mav/MavViewer$1$1;-><init>(Lcom/mediatek/gallery3d/mav/MavViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$200(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode filepath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/mpo/MpoDecoder;->decodeFile(Ljava/lang/String;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$402(Lcom/mediatek/gallery3d/mav/MavViewer;Lcom/mediatek/mpo/MpoDecoder;)Lcom/mediatek/mpo/MpoDecoder;

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    const-string v0, "MavViewer"

    const-string v1, "failed to decode MpoDecoder, finish()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #calls: Lcom/mediatek/gallery3d/mav/MavViewer;->showErrorAndQuit()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$700(Lcom/mediatek/gallery3d/mav/MavViewer;)V

    .line 313
    :goto_1
    return-void

    .line 185
    :cond_0
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mCr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$600(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mpo/MpoDecoder;->decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$402(Lcom/mediatek/gallery3d/mav/MavViewer;Lcom/mediatek/mpo/MpoDecoder;)Lcom/mediatek/mpo/MpoDecoder;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$800(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$200(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, selectionString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 199
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "orientation"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "bucket_display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 205
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$900(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_2
    if-eqz v6, :cond_3

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$800(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    :try_start_1
    new-instance v9, Landroid/media/ExifInterface;

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 218
    .local v9, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v10

    .line 220
    .local v10, exifRotation:I
    packed-switch v10, :pswitch_data_0

    .line 238
    :pswitch_0
    const-string v0, "MavViewer"

    const-string v1, "rotation in exif is not available!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #exifRotation:I
    :goto_2
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try exif: fetched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$800(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$900(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v3           #selectionString:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$800(Lcom/mediatek/gallery3d/mav/MavViewer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final rotation is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$900(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$900(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setImageRotation(I)V

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mpo/MpoDecoder;->frameCount()I

    move-result v1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1102(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 253
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/mpo/MpoDecoder;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/mpo/MpoDecoder;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MavViewer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/mpo/MpoDecoder;->width()I

    move-result v2

    div-int/lit16 v2, v2, 0x1c4

    #calls: Lcom/mediatek/gallery3d/mav/MavViewer;->calcuSampleSize(I)I
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1200(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1100(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1302(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 256
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1100(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1402(Lcom/mediatek/gallery3d/mav/MavViewer;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    .line 259
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1300(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v4, v4, Lcom/mediatek/gallery3d/mav/MavViewer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/mpo/MpoDecoder;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1502(Lcom/mediatek/gallery3d/mav/MavViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 260
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_7

    .line 263
    const-string v0, "MavViewer"

    const-string v1, "failed to get middle frame!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #calls: Lcom/mediatek/gallery3d/mav/MavViewer;->showErrorAndQuit()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$700(Lcom/mediatek/gallery3d/mav/MavViewer;)V

    goto/16 :goto_1

    .line 209
    .restart local v3       #selectionString:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 222
    .restart local v9       #exif:Landroid/media/ExifInterface;
    .restart local v10       #exifRotation:I
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 223
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 240
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #exifRotation:I
    :catch_0
    move-exception v8

    .line 241
    .local v8, e:Ljava/io/IOException;
    const-string v0, "MavViewer"

    const-string v1, "Exception when trying to fetch orientation from exif"

    invoke-static {v0, v1, v8}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 226
    .end local v8           #e:Ljava/io/IOException;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    .restart local v10       #exifRotation:I
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/16 v1, 0x5a

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 227
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z

    goto/16 :goto_2

    .line 230
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/16 v1, 0xb4

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 231
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z

    goto/16 :goto_2

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/16 v1, 0x10e

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I

    .line 235
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 267
    .end local v3           #selectionString:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #exifRotation:I
    :cond_7
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setFirstShowBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$100(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/gallery3d/mav/MavViewer$1$2;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/mav/MavViewer$1$2;-><init>(Lcom/mediatek/gallery3d/mav/MavViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, curFrame:I
    :goto_3
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1100(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 280
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1300(Lcom/mediatek/gallery3d/mav/MavViewer;)I

    move-result v0

    if-eq v7, v0, :cond_8

    .line 281
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    iget-object v2, v2, Lcom/mediatek/gallery3d/mav/MavViewer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v7, v2}, Lcom/mediatek/mpo/MpoDecoder;->frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 282
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMavBitmapArr["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, v7

    if-nez v0, :cond_9

    .line 286
    const-string v0, "MavViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get frame #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #calls: Lcom/mediatek/gallery3d/mav/MavViewer;->showErrorAndQuit()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$700(Lcom/mediatek/gallery3d/mav/MavViewer;)V

    goto/16 :goto_1

    .line 291
    :cond_8
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v7

    .line 293
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 296
    :cond_a
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setBitmapArr([Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer$1;->this$0:Lcom/mediatek/gallery3d/mav/MavViewer;

    #getter for: Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MavViewer;->access$100(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/mav/MavViewer$1$3;-><init>(Lcom/mediatek/gallery3d/mav/MavViewer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
