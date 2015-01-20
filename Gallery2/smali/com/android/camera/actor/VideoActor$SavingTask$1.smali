.class Lcom/android/camera/actor/VideoActor$SavingTask$1;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Lcom/android/camera/FileSaver$FileSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoActor$SavingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/actor/VideoActor$SavingTask;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor$SavingTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$SavingTask$1;->this$1:Lcom/android/camera/actor/VideoActor$SavingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Lcom/android/camera/SaveRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$SavingTask$1;->this$1:Lcom/android/camera/actor/VideoActor$SavingTask;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v1

    monitor-enter v1

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$SavingTask$1;->this$1:Lcom/android/camera/actor/VideoActor$SavingTask;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$2600(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1075
    monitor-exit v1

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
