.class Lcom/android/internal/policy/impl/MediatekGlowPadView$3;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 200
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$3;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$3;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->invalidate()V

    .line 203
    return-void
.end method
