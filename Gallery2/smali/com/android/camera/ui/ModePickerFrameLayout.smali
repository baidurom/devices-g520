.class public Lcom/android/camera/ui/ModePickerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ModePickerFrameLayout.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ModePickerFrameLayout"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ModePickerFrameLayout;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 21
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 22
    const v2, 0x7f0b0035

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, background:Landroid/view/View;
    const v2, 0x7f0b0036

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ModePickerScrollable;

    .line 24
    .local v1, scroller:Lcom/android/camera/ui/ModePickerScrollable;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v1, v0}, Lcom/android/camera/ui/ModePickerScrollable;->setBackgroundView(Landroid/view/View;)V

    .line 27
    :cond_0
    return-void
.end method
