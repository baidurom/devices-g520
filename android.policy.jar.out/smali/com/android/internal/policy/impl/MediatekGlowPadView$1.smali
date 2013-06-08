.class Lcom/android/internal/policy/impl/MediatekGlowPadView$1;
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
    .line 185
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$200(Lcom/android/internal/policy/impl/MediatekGlowPadView;)F

    move-result v3

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$300(Lcom/android/internal/policy/impl/MediatekGlowPadView;IFF)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$1;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$400(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    .line 189
    return-void
.end method
