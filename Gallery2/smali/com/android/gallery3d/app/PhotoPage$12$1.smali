.class Lcom/android/gallery3d/app/PhotoPage$12$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$12;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$12;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$12$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$12$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$12;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$12;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/PhotoPage;->mConvertIntentTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->access$2702(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 1518
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$12$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$12;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$12;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "PhotoPage"

    const-string v1, "mConvertEditTask:dismis ProgressDialog"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$12$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$12;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$12;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$2800(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1522
    :cond_0
    return-void
.end method
