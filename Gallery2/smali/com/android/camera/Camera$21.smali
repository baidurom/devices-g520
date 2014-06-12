.class Lcom/android/camera/Camera$21;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/WfdManagerLocal$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2886
    iput-object p1, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 2889
    invoke-static {}, Lcom/android/camera/Camera;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWfdListener.onStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2893
    iget-object v0, p0, Lcom/android/camera/Camera$21;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mShutterManager:Lcom/android/camera/manager/ShutterManager;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5600(Lcom/android/camera/Camera;)Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 2895
    :cond_1
    return-void
.end method
