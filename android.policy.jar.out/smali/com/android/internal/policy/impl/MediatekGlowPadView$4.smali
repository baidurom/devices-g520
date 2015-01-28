.class Lcom/android/internal/policy/impl/MediatekGlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$500(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$500(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I

    move-result v1

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$600(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$502(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$700(Lcom/android/internal/policy/impl/MediatekGlowPadView;ZZ)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$4;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$802(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z

    .line 215
    return-void
.end method
