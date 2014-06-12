.class Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/manager/ThumbnailManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/ThumbnailManager;Z)V
    .locals 0
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput-boolean p2, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->mLookAtCache:Z

    .line 194
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const-string v5, "ThumbnailManager"

    const-string v6, "doInBackground() begin."

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v5, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 204
    .local v3, t:Lcom/android/camera/Thumbnail;
    iget-boolean v5, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 207
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground() get from thumbnail. thumbnail="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCancelled()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->isCancelled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    .line 238
    .end local v3           #t:Lcom/android/camera/Thumbnail;
    :cond_3
    :goto_0
    return-object v3

    .line 212
    .restart local v3       #t:Lcom/android/camera/Thumbnail;
    :cond_4
    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    new-array v2, v8, [Lcom/android/camera/Thumbnail;

    .line 215
    .local v2, result:[Lcom/android/camera/Thumbnail;
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;)I

    move-result v0

    .line 216
    .local v0, code:I
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastThumbnailFromContentResolver code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_5
    packed-switch v0, :pswitch_data_0

    move-object v3, v4

    .line 228
    goto :goto_0

    .line 221
    :pswitch_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    goto :goto_0

    :pswitch_1
    move-object v3, v4

    .line 223
    goto :goto_0

    .line 225
    :pswitch_2
    invoke-virtual {p0, v8}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->cancel(Z)Z

    move-object v3, v4

    .line 226
    goto :goto_0

    .line 231
    .end local v0           #code:I
    .end local v2           #result:[Lcom/android/camera/Thumbnail;
    :cond_6
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 232
    const-string v4, "ThumbnailManager"

    const-string v5, "getLastThumbnailFromFile = true"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_7
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    const-string v4, "ThumbnailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground() end return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 243
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() thumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCancelled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->isCancelled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/camera/manager/ThumbnailManager;->access$402(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 248
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->updateThumbnailView()V
    invoke-static {v0}, Lcom/android/camera/manager/ThumbnailManager;->access$300(Lcom/android/camera/manager/ThumbnailManager;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/manager/ThumbnailManager$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
