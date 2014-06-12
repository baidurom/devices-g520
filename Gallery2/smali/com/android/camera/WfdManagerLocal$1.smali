.class Lcom/android/camera/WfdManagerLocal$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdManagerLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WfdManagerLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WfdManagerLocal;


# direct methods
.method constructor <init>(Lcom/android/camera/WfdManagerLocal;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-static {}, Lcom/android/camera/WfdManagerLocal;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "WfdManagerLocal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    invoke-virtual {v1}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v1

    #calls: Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/WfdManagerLocal;->access$100(Lcom/android/camera/WfdManagerLocal;Z)V

    .line 35
    return-void
.end method
