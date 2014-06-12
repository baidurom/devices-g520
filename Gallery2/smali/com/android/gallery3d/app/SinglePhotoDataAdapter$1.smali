.class Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    .line 143
    :goto_1
    return-void

    .line 135
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 138
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/util/Future;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeSecondThumbComplete(Lcom/android/gallery3d/util/Future;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/util/Future;)V

    goto :goto_1

    .line 142
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    #calls: Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
