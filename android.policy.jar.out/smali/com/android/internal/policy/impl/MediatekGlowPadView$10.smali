.class Lcom/android/internal/policy/impl/MediatekGlowPadView$10;
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
    .line 1775
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$10;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$10;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/TargetDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/TargetDrawable;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TargetDrawable;->setState([I)V

    .line 1778
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$10;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 1779
    return-void
.end method
