.class Lcom/android/camera/actor/EffectsRecorder$6;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/EffectsRecorder;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    iput-object p2, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1200(Lcom/android/camera/actor/EffectsRecorder;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1100(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/actor/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1031
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mEffectsListener:Lcom/android/camera/actor/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/actor/EffectsRecorder;->access$1100(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/EffectsRecorder$6;->val$exception:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$6;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOutputFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$1300(Lcom/android/camera/actor/EffectsRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/actor/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
