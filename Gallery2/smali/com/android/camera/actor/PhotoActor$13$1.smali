.class Lcom/android/camera/actor/PhotoActor$13$1;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/PhotoActor$13;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/PhotoActor$13;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor$13;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$13$1;->this$1:Lcom/android/camera/actor/PhotoActor$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$13$1;->this$1:Lcom/android/camera/actor/PhotoActor$13;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$13$1;->this$1:Lcom/android/camera/actor/PhotoActor$13;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor$13;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->restartPreview()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$800(Lcom/android/camera/actor/PhotoActor;)V

    .line 698
    :cond_0
    return-void
.end method
