.class Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/policy/impl/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 165
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Tweener;

    .line 166
    .local v0, anim:Lcom/android/internal/policy/impl/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0           #anim:Lcom/android/internal/policy/impl/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 169
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspend"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    .line 182
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 154
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 156
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Tweener;

    .line 158
    .local v0, anim:Lcom/android/internal/policy/impl/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 173
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 174
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/Tweener;

    .line 175
    .local v0, anim:Lcom/android/internal/policy/impl/Tweener;
    iget-object v3, v0, Lcom/android/internal/policy/impl/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v0           #anim:Lcom/android/internal/policy/impl/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method
