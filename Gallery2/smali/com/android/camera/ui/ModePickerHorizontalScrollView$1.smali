.class Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "ModePickerHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModePickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ModePickerHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePickerHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "ModePickerHorizontalScrollView"

    const-string v1, "mHideRunnable.run()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerHorizontalScrollView;

    #getter for: Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->access$100(Lcom/android/camera/ui/ModePickerHorizontalScrollView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;->this$0:Lcom/android/camera/ui/ModePickerHorizontalScrollView;

    #getter for: Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->access$100(Lcom/android/camera/ui/ModePickerHorizontalScrollView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 33
    :cond_1
    return-void
.end method
