.class Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 2143
    iput-object p1, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;Lcom/android/internal/policy/impl/MediatekGlowPadView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2143
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;-><init>(Lcom/android/internal/policy/impl/MediatekGlowPadView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2195
    const-string v0, "MediatekGlowPadView"

    const-string v2, "onDown"

    invoke-static {v0, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2602(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z

    .line 2197
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v2, -0x1

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1302(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)I

    .line 2198
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 2199
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2183
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTouchTriggered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2700(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2186
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v4, p3

    move v5, p4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 2190
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v4, p3

    move v5, p4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 2178
    const-string v0, "MediatekGlowPadView"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    .line 2168
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onScroll *** mDragViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1500(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1400(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPendingDragViewState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mPendingDragViewState:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1300(Lcom/android/internal/policy/impl/MediatekGlowPadView;)I

    move-result v3

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1400(Lcom/android/internal/policy/impl/MediatekGlowPadView;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 2172
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 2160
    const-string v0, "MediatekGlowPadView"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2602(Lcom/android/internal/policy/impl/MediatekGlowPadView;Z)Z

    .line 2162
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 2163
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 2147
    const-string v0, "MediatekGlowPadView"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/MediatekGlowPadView;->mTapTimeOut:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$2600(Lcom/android/internal/policy/impl/MediatekGlowPadView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/android/internal/policy/impl/MediatekGlowPadView$SimpleOnGestureListener;->this$0:Lcom/android/internal/policy/impl/MediatekGlowPadView;

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move v5, v4

    #calls: Lcom/android/internal/policy/impl/MediatekGlowPadView;->switchDragViewToState(IIIFF)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/MediatekGlowPadView;->access$1800(Lcom/android/internal/policy/impl/MediatekGlowPadView;IIIFF)V

    .line 2152
    const/4 v0, 0x1

    .line 2154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
