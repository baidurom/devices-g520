.class Lcom/android/camera/actor/EffectsRecorder$7;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1036
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$7;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$7;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$7;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1400(Lcom/android/camera/actor/EffectsRecorder;)Landroid/media/MediaActionSound;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$7;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1400(Lcom/android/camera/actor/EffectsRecorder;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1041
    :cond_0
    return-void
.end method
