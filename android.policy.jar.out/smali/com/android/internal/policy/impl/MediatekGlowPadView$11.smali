.class Lcom/android/internal/policy/impl/MediatekGlowPadView$11;
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
    .line 1782
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1784
    const-string v0, "MediatekGlowPadView"

    const-string v1, "mFakeHandleDrawableResetListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleX(F)V

    .line 1786
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setScaleY(F)V

    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/TargetDrawable;->setAlpha(F)V

    .line 1788
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1789
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$11;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x7

    move v3, v2

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 1790
    return-void
.end method
