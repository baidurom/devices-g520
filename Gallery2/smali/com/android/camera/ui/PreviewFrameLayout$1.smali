.class Lcom/android/camera/ui/PreviewFrameLayout$1;
.super Ljava/lang/Object;
.source "PreviewFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/PreviewFrameLayout;->setAspectRatio(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PreviewFrameLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PreviewFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/PreviewFrameLayout$1;->this$0:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/PreviewFrameLayout$1;->this$0:Lcom/android/camera/ui/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewFrameLayout;->requestLayout()V

    .line 72
    return-void
.end method
