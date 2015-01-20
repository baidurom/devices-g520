.class Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkInputActivity;Lcom/android/stk/StkInputActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;-><init>(Lcom/android/stk/StkInputActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkInputActivity;

    #calls: Lcom/android/stk/StkInputActivity;->cancelTimeOut()V
    invoke-static {v1}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;)V

    .line 441
    iget-object v1, p0, Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v2, 0xc

    const-string v3, "NO"

    const/4 v4, 0x0

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/stk/StkInputActivity;->access$300(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 442
    iget-object v1, p0, Lcom/android/stk/StkInputActivity$AirplaneBroadcastReceiver;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 444
    :cond_0
    return-void
.end method
