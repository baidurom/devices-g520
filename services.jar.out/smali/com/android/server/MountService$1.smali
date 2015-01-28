.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 641
    :cond_0
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 642
    .local v2, isIPO:Z
    if-eqz v2, :cond_2

    .line 643
    const-string v4, "MountService"

    const-string v5, "MountService BOOT_IPO!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_0
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;Z)Z

    .line 648
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v4, v3}, Lcom/android/server/MountService;->access$1102(Lcom/android/server/MountService;I)I

    .line 654
    const-string v4, "simulator"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    const-string v6, "/sdcard"

    const/4 v7, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 907
    .end local v2           #isIPO:Z
    :cond_1
    :goto_1
    return-void

    .line 645
    .restart local v2       #isIPO:Z
    :cond_2
    const-string v4, "MountService"

    const-string v5, "MountService BOOT_COMPLETED!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    :cond_3
    new-instance v3, Lcom/android/server/MountService$1$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 785
    .end local v2           #isIPO:Z
    :cond_4
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 786
    const-string v4, "connected"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "mass_storage"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 788
    .local v1, available:Z
    :goto_2
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$202(Lcom/android/server/MountService;Z)Z

    .line 789
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Z)V

    goto :goto_1

    .end local v1           #available:Z
    :cond_5
    move v1, v3

    .line 786
    goto :goto_2

    .line 790
    :cond_6
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 791
    const-string v3, "MountService"

    const-string v4, "USB enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v3, Lcom/android/server/MountService$1$2;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$2;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 803
    :cond_7
    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 804
    const-string v3, "MountService"

    const-string v4, "USB disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    new-instance v3, Lcom/android/server/MountService$1$3;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$3;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 816
    :cond_8
    const-string v3, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 817
    const-string v3, "MountService"

    const-string v4, "format SD"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    new-instance v3, Lcom/android/server/MountService$1$4;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$4;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 862
    :cond_9
    const-string v3, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    const-string v3, "MountService"

    const-string v4, "receive intent - POWEROFF_ALARM"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v3, Lcom/android/server/MountService$1$5;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$5;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method
