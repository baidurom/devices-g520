.class Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/Thumbnail;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ThumbnailManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/manager/ThumbnailManager;Lcom/android/camera/manager/ThumbnailManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;-><init>(Lcom/android/camera/manager/ThumbnailManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, [Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;->doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/Thumbnail;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 289
    array-length v2, p1

    .line 290
    .local v2, n:I
    iget-object v3, p0, Lcom/android/camera/manager/ThumbnailManager$SaveThumbnailTask;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v3}, Lcom/android/camera/manager/ThumbnailManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 291
    .local v0, filesDir:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 292
    aget-object v3, p1, v1

    invoke-virtual {v3, v0}, Lcom/android/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
