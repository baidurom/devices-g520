.class Lcom/android/stk/NotificationAlertActivity$1;
.super Ljava/lang/Object;
.source "NotificationAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/NotificationAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/NotificationAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/NotificationAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/stk/NotificationAlertActivity$1;->this$0:Lcom/android/stk/NotificationAlertActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/stk/NotificationAlertActivity$1;->this$0:Lcom/android/stk/NotificationAlertActivity;

    invoke-virtual {v0}, Lcom/android/stk/NotificationAlertActivity;->finish()V

    .line 83
    return-void
.end method
