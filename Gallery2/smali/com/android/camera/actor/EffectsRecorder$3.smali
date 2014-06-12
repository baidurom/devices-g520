.class Lcom/android/camera/actor/EffectsRecorder$3;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$3;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingDone()V
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$3;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "EffectsRecorder"

    const-string v1, "Recording done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$3;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/actor/EffectsRecorder;->access$500(Lcom/android/camera/actor/EffectsRecorder;II)V

    .line 681
    return-void
.end method
