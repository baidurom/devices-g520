.class Lcom/mediatek/vt/VTManager$2;
.super Ljava/lang/Thread;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vt/VTManager;->createThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vt/VTManager;


# direct methods
.method constructor <init>(Lcom/mediatek/vt/VTManager;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    new-instance v1, Lcom/mediatek/vt/VTManager$TelMsgHandler;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mediatek/vt/VTManager$TelMsgHandler;-><init>(Lcom/mediatek/vt/VTManager;Lcom/mediatek/vt/VTManager$1;)V

    iput-object v1, v0, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 202
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const-string v0, "VTManager"

    const-string v1, "register TelMsg, notify--sync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/CallManager;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v0, v0, Lcom/mediatek/vt/VTManager;->mCallManager:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$2;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/CallManager;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 223
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
