.class Lcom/android/gallery3d/ui/ActionModeHandler$5$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$5;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$5;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$5;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$5;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1302(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$5;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    const-string v0, "ActionModeHandler"

    const-string v1, "mConvertIntentTask:dismis ProgressDialog"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$5$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$5;

    iget-object v0, v0, Lcom/android/gallery3d/ui/ActionModeHandler$5;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$1400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 510
    :cond_0
    return-void
.end method
