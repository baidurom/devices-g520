.class Lcom/android/camera/actor/VideoActor$9;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoActor;->setAutoFocusMode()V
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
    .line 1414
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 1419
    return-void
.end method
