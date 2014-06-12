.class Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkDialogActivity;Lcom/android/stk/StkDialogActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/StkDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkDialogActivity;

    #calls: Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V
    invoke-static {v1}, Lcom/android/stk/StkDialogActivity;->access$200(Lcom/android/stk/StkDialogActivity;)V

    .line 353
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v2, 0xd

    const/4 v3, 0x0

    #calls: Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/stk/StkDialogActivity;->access$300(Lcom/android/stk/StkDialogActivity;IZ)V

    .line 354
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v1}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 356
    :cond_0
    return-void
.end method
