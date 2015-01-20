.class Lcom/android/internal/telephony/DupSmsFilter$1;
.super Landroid/os/Handler;
.source "DupSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DupSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DupSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DupSmsFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/DupSmsFilter$1;->this$0:Lcom/android/internal/telephony/DupSmsFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter$1;->this$0:Lcom/android/internal/telephony/DupSmsFilter;

    iget-object v1, v0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 38
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/DupSmsFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "clear dup sms list"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter$1;->this$0:Lcom/android/internal/telephony/DupSmsFilter;

    iget-object v0, v0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter$1;->this$0:Lcom/android/internal/telephony/DupSmsFilter;

    #calls: Lcom/android/internal/telephony/DupSmsFilter;->sendClearMessage()V
    invoke-static {v0}, Lcom/android/internal/telephony/DupSmsFilter;->access$100(Lcom/android/internal/telephony/DupSmsFilter;)V

    .line 41
    monitor-exit v1

    .line 43
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
