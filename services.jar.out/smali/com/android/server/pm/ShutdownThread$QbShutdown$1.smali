.class Lcom/android/server/pm/ShutdownThread$QbShutdown$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$QbShutdown;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThread$QbShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThread$QbShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/pm/ShutdownThread$QbShutdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/pm/ShutdownThread$QbShutdown;

    #getter for: Lcom/android/server/pm/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->access$400(Lcom/android/server/pm/ShutdownThread$QbShutdown;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/pm/ShutdownThread$QbShutdown;

    #calls: Lcom/android/server/pm/ShutdownThread$QbShutdown;->updateConfirmView(Z)V
    invoke-static {v0, p2}, Lcom/android/server/pm/ShutdownThread$QbShutdown;->access$500(Lcom/android/server/pm/ShutdownThread$QbShutdown;Z)V

    .line 483
    return-void
.end method
