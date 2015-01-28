.class Lcom/mediatek/gallery3d/mav/MAVView$1;
.super Ljava/lang/Thread;
.source "MAVView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/mav/MAVView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/mav/MAVView;

.field final synthetic val$startX:I


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MAVView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    iput p2, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->val$startX:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 461
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #setter for: Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z
    invoke-static {v3, v5}, Lcom/mediatek/gallery3d/mav/MAVView;->access$102(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z

    .line 462
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$100(Lcom/mediatek/gallery3d/mav/MAVView;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 464
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget v4, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->val$startX:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mDistDivider:I
    invoke-static {v4}, Lcom/mediatek/gallery3d/mav/MAVView;->access$300(Lcom/mediatek/gallery3d/mav/MAVView;)I

    move-result v4

    div-int v2, v3, v4

    .line 465
    .local v2, scrollX:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    new-instance v4, Lcom/mediatek/gallery3d/mav/MAVView$1$1;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/gallery3d/mav/MAVView$1$1;-><init>(Lcom/mediatek/gallery3d/mav/MAVView$1;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 472
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isOverScrolled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$500(Lcom/mediatek/gallery3d/mav/MAVView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 473
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$200(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v3

    float-to-int v0, v3

    .line 474
    .local v0, curVelocity:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$600(Lcom/mediatek/gallery3d/mav/MAVView;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$700(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mEffectRight:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$700(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 476
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #setter for: Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z
    invoke-static {v3, v5}, Lcom/mediatek/gallery3d/mav/MAVView;->access$502(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z

    .line 481
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$500(Lcom/mediatek/gallery3d/mav/MAVView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    .line 487
    .end local v0           #curVelocity:I
    :cond_1
    const-wide/16 v3, 0x14

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 492
    .end local v2           #scrollX:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/gallery3d/mav/MAVView;->mFlingOnGoing:Z
    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/mav/MAVView;->access$102(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z

    .line 493
    return-void

    .line 477
    .restart local v0       #curVelocity:I
    .restart local v2       #scrollX:I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mFlingDirection:I
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$600(Lcom/mediatek/gallery3d/mav/MAVView;)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$800(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mEffectLeft:Landroid/widget/EdgeEffect;
    invoke-static {v3}, Lcom/mediatek/gallery3d/mav/MAVView;->access$800(Lcom/mediatek/gallery3d/mav/MAVView;)Landroid/widget/EdgeEffect;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 479
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #setter for: Lcom/mediatek/gallery3d/mav/MAVView;->mAbsorbingFling:Z
    invoke-static {v3, v5}, Lcom/mediatek/gallery3d/mav/MAVView;->access$502(Lcom/mediatek/gallery3d/mav/MAVView;Z)Z

    goto :goto_1
.end method
