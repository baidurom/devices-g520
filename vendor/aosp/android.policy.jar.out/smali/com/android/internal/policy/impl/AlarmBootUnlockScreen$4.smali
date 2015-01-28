.class Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;
.super Ljava/lang/Object;
.source "AlarmBootUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->powOn()V
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
    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    const-string v2, "wakelock.release"

    #calls: Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->sendBR(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.normal.boot.done"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, bootDoneIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AlarmBootUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
