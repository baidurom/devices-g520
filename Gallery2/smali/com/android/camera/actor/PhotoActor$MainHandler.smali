.class Lcom/android/camera/actor/PhotoActor$MainHandler;
.super Landroid/os/Handler;
.source "PhotoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$MainHandler;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 197
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->initializeAfterPreview()V

    .line 198
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onPreviewStartDone()V

    .line 199
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    goto :goto_0

    .line 202
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onBurstSaveDone()V

    goto :goto_0

    .line 206
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->onImagePickSaveDone()V

    goto :goto_0

    .line 210
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->initializeAfterPreview()V

    goto :goto_0

    .line 214
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$MainHandler;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->updateDelayTakePictureTime()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$500(Lcom/android/camera/actor/PhotoActor;)V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
