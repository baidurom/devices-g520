.class public Lcom/android/camera/ui/ShutterButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButton;->isPressed()Z

    move-result v0

    .line 64
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 65
    if-nez v0, :cond_1

    .line 87
    new-instance v1, Lcom/android/camera/ui/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/ShutterButton$1;-><init>(Lcom/android/camera/ui/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 96
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/ShutterButton;->mOldPressed:Z

    .line 98
    :cond_0
    return-void

    .line 94
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 110
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 114
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButton;->mListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 53
    return-void
.end method
