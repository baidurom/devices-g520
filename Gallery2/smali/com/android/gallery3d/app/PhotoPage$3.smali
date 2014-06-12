.class Lcom/android/gallery3d/app/PhotoPage$3;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 381
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 417
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 383
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideBars()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1300(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 419
    :goto_0
    return-void

    .line 387
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 391
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1400(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->unlockOrientation()V

    goto :goto_0

    .line 395
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mAppBridge:Lcom/android/gallery3d/app/AppBridge;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$1500(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/AppBridge;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/app/AppBridge;->onFullScreenChanged(ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 399
    :sswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateBars()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$900(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 403
    :sswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->wantBars()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1600(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 407
    :sswitch_6
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unfreeze()V

    goto :goto_0

    .line 412
    :sswitch_7
    invoke-static {}, Lcom/android/gallery3d/app/PhotoPage;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "PhotoPage"

    const-string v1, "handleMessage:update menu operations()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$3;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$1800(Lcom/android/gallery3d/app/PhotoPage;)V

    goto :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x81 -> :sswitch_7
    .end sparse-switch
.end method
