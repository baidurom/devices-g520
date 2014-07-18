.class public Lcom/android/camera/ui/ModePickerScrollView;
.super Landroid/widget/ScrollView;
.source "ModePickerScrollView.java"

# interfaces
.implements Lcom/android/camera/ui/ModePickerScrollable;


# static fields
.field private static final DELAY_HIDE_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ModePickerScrollView"


# instance fields
.field private mBackground:Landroid/view/View;

.field private mHideRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Lcom/android/camera/ui/ModePickerScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ModePickerScrollView$1;-><init>(Lcom/android/camera/ui/ModePickerScrollView;)V

    iput-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mHideRunnable:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ModePickerScrollView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;

    return-object v0
.end method

.method private showBackground()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/ModePickerScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModePickerScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/ModePickerScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

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
    sget-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "ModePickerScrollView"

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
    invoke-direct {p0}, Lcom/android/camera/ui/ModePickerScrollView;->showBackground()V

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "ModePickerScrollView"

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
    invoke-direct {p0}, Lcom/android/camera/ui/ModePickerScrollView;->showBackground()V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "ModePickerScrollView"

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
    iput-object p1, p0, Lcom/android/camera/ui/ModePickerScrollView;->mBackground:Landroid/view/View;

    .line 79
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ModePickerScrollView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/ModePickerScrollView;->LOG:Z

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "ModePickerScrollView"

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