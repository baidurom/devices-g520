.class Lcom/android/camera/actor/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


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
    .line 915
    iput-object p1, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 918
    iget-object v3, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    monitor-enter v3

    .line 919
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$600(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mSurfaceStateListener:Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$600(Lcom/android/camera/actor/EffectsRecorder;)Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/camera/actor/EffectsRecorder$OnSurfaceStateChangeListener;->onStateChange(Z)V

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    const-string v2, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/actor/EffectsRecorder;->access$700(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/actor/EffectsRecorder;->access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_1
    if-ne p1, v8, :cond_3

    .line 928
    const-string v2, "EffectsRecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$700(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 931
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$700(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 935
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #calls: Lcom/android/camera/actor/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v2, v0}, Lcom/android/camera/actor/EffectsRecorder;->access$900(Lcom/android/camera/actor/EffectsRecorder;Ljava/lang/Exception;)V

    .line 937
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 939
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 940
    const-string v2, "EffectsRecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_4
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$1000(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 943
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 944
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 946
    :cond_5
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v4}, Lcom/android/camera/actor/EffectsRecorder;->access$1000(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 947
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 948
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 950
    :cond_6
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2, v4}, Lcom/android/camera/actor/EffectsRecorder;->access$802(Lcom/android/camera/actor/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;

    .line 952
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_7
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v2

    if-eq v2, v7, :cond_8

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 954
    :cond_8
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 955
    const-string v2, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_9
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 969
    if-ne p1, v8, :cond_a

    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$400(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 970
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    #calls: Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/actor/EffectsRecorder;->access$500(Lcom/android/camera/actor/EffectsRecorder;II)V

    .line 972
    :cond_a
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$700(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 984
    :goto_1
    monitor-exit v3

    .line 985
    return-void

    .line 932
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_b
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 933
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$800(Lcom/android/camera/actor/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto/16 :goto_0

    .line 973
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$200(Lcom/android/camera/actor/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_e

    .line 975
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    #getter for: Lcom/android/camera/actor/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/actor/EffectsRecorder;->access$000(Lcom/android/camera/actor/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 976
    const-string v2, "EffectsRecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_d
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/actor/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 979
    iget-object v2, p0, Lcom/android/camera/actor/EffectsRecorder$4;->this$0:Lcom/android/camera/actor/EffectsRecorder;

    const/4 v4, 0x0

    const/4 v5, 0x3

    #calls: Lcom/android/camera/actor/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/actor/EffectsRecorder;->access$500(Lcom/android/camera/actor/EffectsRecorder;II)V

    goto :goto_1

    .line 984
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 981
    :cond_e
    :try_start_1
    const-string v2, "EffectsRecorder"

    const-string v4, " camera will be/has been released"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
