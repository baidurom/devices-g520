.class Lcom/android/internal/policy/impl/MediatekGlowPadView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MediatekGlowPadView;->startWaveAnimation()V
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
    .line 924
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    const/4 v1, 0x0

    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointCloud$WaveManager;->setRadius(F)V

    .line 927
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/PointCloud;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1100(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Lcom/android/internal/policy/impl/PointCloud;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PointCloud;->waveManager:Lcom/android/internal/policy/impl/PointCloud$WaveManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PointCloud$WaveManager;->setAlpha(F)V

    .line 928
    return-void
.end method
