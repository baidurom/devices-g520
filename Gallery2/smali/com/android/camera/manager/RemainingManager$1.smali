.class Lcom/android/camera/manager/RemainingManager$1;
.super Ljava/lang/Object;
.source "RemainingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/manager/RemainingManager;->showHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/RemainingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/RemainingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    #getter for: Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/camera/manager/RemainingManager;->access$000(Lcom/android/camera/manager/RemainingManager;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #setter for: Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;
    invoke-static {v2, v3}, Lcom/android/camera/manager/RemainingManager;->access$002(Lcom/android/camera/manager/RemainingManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    #getter for: Lcom/android/camera/manager/RemainingManager;->mAvaliableSpace:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/camera/manager/RemainingManager;->access$000(Lcom/android/camera/manager/RemainingManager;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 193
    .local v0, leftSpace:J
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    #calls: Lcom/android/camera/manager/RemainingManager;->computeStorage(J)J
    invoke-static {v2, v0, v1}, Lcom/android/camera/manager/RemainingManager;->access$100(Lcom/android/camera/manager/RemainingManager;J)J

    move-result-wide v0

    .line 194
    iget-object v2, p0, Lcom/android/camera/manager/RemainingManager$1;->this$0:Lcom/android/camera/manager/RemainingManager;

    #calls: Lcom/android/camera/manager/RemainingManager;->updateStorageHint(J)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/manager/RemainingManager;->access$200(Lcom/android/camera/manager/RemainingManager;J)V

    .line 195
    return-void
.end method
