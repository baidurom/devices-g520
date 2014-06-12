.class Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method private constructor <init>(Lcom/android/stk/ToneDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/ToneDialog;Lcom/android/stk/ToneDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/ToneDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/stk/ToneDialog$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {v1}, Lcom/android/stk/ToneDialog;->finish()V

    .line 233
    :cond_0
    return-void
.end method
