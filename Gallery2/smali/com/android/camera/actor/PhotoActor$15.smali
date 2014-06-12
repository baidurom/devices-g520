.class Lcom/android/camera/actor/PhotoActor$15;
.super Ljava/lang/Thread;
.source "PhotoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/PhotoActor;->doAttach()V
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
    .line 1198
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 1202
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1203
    return-void
.end method
