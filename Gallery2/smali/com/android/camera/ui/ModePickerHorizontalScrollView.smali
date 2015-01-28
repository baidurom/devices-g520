.class public Lcom/android/camera/ui/ModePickerHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ModePickerHorizontalScrollView.java"

# interfaces
.implements Lcom/android/camera/ui/ModePickerScrollable;


# static fields
.field private static final DELAY_HIDE_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ModePickerHorizontalScrollView"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mScrollToEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModePickerHorizontalScrollView$1;-><init>(Lcom/android/camera/ui/ModePickerHorizontalScrollView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mHideRunnable:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModePickerHorizontalScrollView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;

    return-object v0
.end method

.method private showBackground()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "ModePickerHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->showBackground()V

    .line 42
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 84
    iget-boolean v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mScrollToEnd:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ltz v0, :cond_0

    .line 87
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mScrollToEnd:Z

    .line 90
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "ModePickerHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->showBackground()V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "ModePickerHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mBackground:Landroid/view/View;

    .line 79
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/ModePickerHorizontalScrollView;->LOG:Z

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "ModePickerHorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method
