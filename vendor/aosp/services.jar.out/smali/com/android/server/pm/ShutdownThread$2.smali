.class final Lcom/android/server/pm/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$300(Landroid/content/Context;)V

    .line 223
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 226
    :cond_0
    return-void
.end method