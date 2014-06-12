.class Lcom/android/camera/actor/VideoActor$11;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->deleteCurrentVideo()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$4600(Lcom/android/camera/actor/VideoActor;)V

    .line 1482
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideReview()V

    .line 1483
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 1484
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 1485
    return-void
.end method
