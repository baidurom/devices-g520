.class final Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IntersectAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragging:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2400(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$IntersectAnimationRunnable;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mShouldDoIntersectAnim:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2502(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z

    .line 2063
    :cond_0
    return-void
.end method
