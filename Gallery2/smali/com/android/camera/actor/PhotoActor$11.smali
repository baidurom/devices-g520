.class Lcom/android/camera/actor/PhotoActor$11;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 528
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 532
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-string v0, "PhotoActor"

    const-string v1, "RawPictureCallback onPictureTaken "

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/actor/PhotoActor;->access$1602(Lcom/android/camera/actor/PhotoActor;J)J

    .line 536
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$1600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/actor/PhotoActor$11;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/actor/PhotoActor;->access$1500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    return-void
.end method
