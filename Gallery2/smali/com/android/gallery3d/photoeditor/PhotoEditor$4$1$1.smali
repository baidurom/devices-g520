.class Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 154
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;)V

    .line 163
    .local v0, callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mSourceUriForSaving:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    .line 165
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    new-instance v2, Lcom/android/gallery3d/photoeditor/SaveCopyTask;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v3, v3, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct {v2, v3, v1, v0}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    return-void

    .line 163
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$600(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
