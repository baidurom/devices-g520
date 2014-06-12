.class Lcom/android/camera/actor/PhotoActor$4;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$4;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 254
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "PhotoActor"

    const-string v1, "mRetakeListener.onClick()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$4;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_1

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$4;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideReview()V

    .line 262
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$4;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$4;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->restartPreview()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$800(Lcom/android/camera/actor/PhotoActor;)V

    goto :goto_0
.end method
