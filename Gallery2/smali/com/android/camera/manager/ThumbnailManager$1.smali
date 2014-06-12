.class Lcom/android/camera/manager/ThumbnailManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ThumbnailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ThumbnailManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/ThumbnailManager;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    invoke-static {}, Lcom/android/camera/manager/ThumbnailManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeletePictureReceiver.onReceive("

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

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ThumbnailManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    #calls: Lcom/android/camera/manager/ThumbnailManager;->getLastThumbnailUncached()V
    invoke-static {v0}, Lcom/android/camera/manager/ThumbnailManager;->access$100(Lcom/android/camera/manager/ThumbnailManager;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ThumbnailManager$1;->this$0:Lcom/android/camera/manager/ThumbnailManager;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/manager/ThumbnailManager;->mUpdateThumbnailDelayed:Z
    invoke-static {v0, v1}, Lcom/android/camera/manager/ThumbnailManager;->access$202(Lcom/android/camera/manager/ThumbnailManager;Z)Z

    goto :goto_0
.end method
