.class Lcom/android/internal/policy/impl/MediatekGlowPadView$5;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$5;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$5;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->refreshPositions()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$900(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    .line 244
    return-void
.end method
