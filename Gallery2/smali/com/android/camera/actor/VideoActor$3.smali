.class Lcom/android/camera/actor/VideoActor$3;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Lcom/android/camera/WfdManagerLocal$Listener;


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
    .line 232
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    #setter for: Lcom/android/camera/actor/VideoActor;->mWfdListenerEnabled:Z
    invoke-static {v0, p1}, Lcom/android/camera/actor/VideoActor;->access$1102(Lcom/android/camera/actor/VideoActor;Z)Z

    .line 237
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$700(Lcom/android/camera/actor/VideoActor;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {}, Lcom/android/camera/actor/VideoActor;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWfdListener, enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMediaRecorderRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
