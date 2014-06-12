.class public Lcom/android/gallery3d/photoeditor/LoadScreennailTask;
.super Landroid/os/AsyncTask;
.source "LoadScreennailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final SCREENNAIL_HEIGHT:I = 0x3c0

.field private static final SCREENNAIL_WIDTH:I = 0x500

.field private static final TAG:Ljava/lang/String; = "LoadScreennailTask"


# instance fields
.field private final callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 51
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 58
    aget-object v2, p1, v2

    if-nez v2, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    const/16 v4, 0x500

    const/16 v5, 0x3c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->getBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "LoadScreennailTask"

    const-string v3, "Decode bitmap fail. "

    invoke-static {v2, v3, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 66
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "LoadScreennailTask"

    const-string v3, "Cannot get screennail. "

    invoke-static {v2, v3, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->context:Landroid/content/Context;

    const v2, 0x7f0c01b4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 76
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 80
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
