.class Lcom/android/internal/telephony/SmsStorageMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsStorageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsStorageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    #setter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$002(Lcom/android/internal/telephony/SmsStorageMonitor;Z)Z

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    #setter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$002(Lcom/android/internal/telephony/SmsStorageMonitor;Z)Z

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0
    
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    
    move-result-object v0
    
    const-string v1, "android.intent.action.DEVICE_STORAGE_NEARLY_FULL"
    
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    
    move-result v0
    
    if-eqz v0, :cond_3
    
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;
    
    #setter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageNearlyFull:Z
    invoke-static {v0, v3}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$102(Lcom/android/internal/telephony/SmsStorageMonitor;Z)Z
    
    goto :goto_0
    
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    
    move-result-object v0
    
    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_NEARLY_FULL"
    
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    
    move-result v0
    
    if-eqz v0, :cond_0
    
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsStorageMonitor;
    
    #setter for: Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageNearlyFull:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->access$102(Lcom/android/internal/telephony/SmsStorageMonitor;Z)Z
    
    goto :goto_0
.end method
