.class Lcom/android/camera/AnimationController$2;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDotCount:I

.field final synthetic this$0:Lcom/android/camera/AnimationController;


# direct methods
.method constructor <init>(Lcom/android/camera/AnimationController;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    iget v1, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$300(Lcom/android/camera/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    if-lt v1, v2, :cond_1

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Direction animation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v3}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 51
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    iget v1, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    mul-int/lit16 v1, v1, 0xb4

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 54
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$300(Lcom/android/camera/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v2}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$300(Lcom/android/camera/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    iget-object v3, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v3}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$300(Lcom/android/camera/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/camera/AnimationController$2;->mDotCount:I

    iget-object v3, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v3}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$300(Lcom/android/camera/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mDirectionDotIndex:I
    invoke-static {v2}, Lcom/android/camera/AnimationController;->access$400(Lcom/android/camera/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 60
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$408(Lcom/android/camera/AnimationController;)I

    .line 61
    iget-object v1, p0, Lcom/android/camera/AnimationController$2;->this$0:Lcom/android/camera/AnimationController;

    #getter for: Lcom/android/camera/AnimationController;->mHanler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/AnimationController;->access$200(Lcom/android/camera/AnimationController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
