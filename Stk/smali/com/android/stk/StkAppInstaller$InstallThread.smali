.class Lcom/android/stk/StkAppInstaller$InstallThread;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppInstaller;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppInstaller$InstallThread;-><init>(Lcom/android/stk/StkAppInstaller;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/stk/StkAppInstaller$InstallThread;->this$0:Lcom/android/stk/StkAppInstaller;

    iget-object v0, v0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    #calls: Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/android/stk/StkAppInstaller;->access$000(Landroid/content/Context;Z)V

    .line 116
    return-void
.end method
