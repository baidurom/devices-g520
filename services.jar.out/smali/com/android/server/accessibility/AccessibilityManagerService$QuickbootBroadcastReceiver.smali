.class Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 206
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3601(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    .line 214
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 217
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
