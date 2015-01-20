.class Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$5;
.super Landroid/content/BroadcastReceiver;
.source "AlarmBootUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->snooze()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)V

    .line 246
    :cond_0
    return-void
.end method
