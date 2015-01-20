.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay;
.implements Lcom/android/gallery3d/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;,
        Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_RELATIVE_PADDING:F = 0.16666667f

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "Gallery3D/MovieControllerOverlay"


# instance fields
.field private final background:Landroid/view/View;

.field private canReplay:Z

.field private enableRewindAndForward:Z

.field private final errorView:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field private final loadingView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

.field private mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

.field private mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

.field private mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

.field private final mWindowInsets:Landroid/graphics/Rect;

.field private mainView:Landroid/view/View;

.field private final playPauseReplayView:Landroid/widget/ImageView;

.field private final startHidingRunnable:Ljava/lang/Runnable;

.field private state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field private final timeBar:Lcom/android/gallery3d/app/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    iput-boolean v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    .line 94
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    .line 438
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 567
    new-instance v4, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    .line 568
    new-instance v4, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    .line 569
    new-instance v4, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    .line 99
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    .line 100
    sget-object v4, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 102
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v3, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v0, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v4, Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {v4, p1, p0}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 112
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    .line 115
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 117
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    .line 127
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v5, 0x7f02014a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 131
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 135
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 138
    new-instance v4, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 144
    const v4, 0x7f050005

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 145
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-static {p1}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieStrategy(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieStrategy;->shouldEnableRewindAndForward()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iput-boolean v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    .line 153
    const-string v4, "Gallery3D/MovieControllerOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableRewindAndForward is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->init(Landroid/content/Context;)V

    .line 157
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->init(Landroid/content/Context;Landroid/view/View;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    return v0
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->canHidePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onCancelHiding()V

    .line 320
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onCancelHiding()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 325
    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 162
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, view:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 486
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 487
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 488
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 489
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 490
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :cond_0
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeStartHiding() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 262
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    .line 263
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowMainView(Landroid/view/View;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 269
    return-void

    :cond_0
    move v0, v2

    .line 263
    goto :goto_0

    :cond_1
    move v0, v2

    .line 264
    goto :goto_1

    :cond_2
    move v1, v2

    .line 265
    goto :goto_2
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->canHidePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onStartHiding()V

    .line 301
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onStartHiding()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method private updateViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_4

    const v0, 0x7f02014a

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onShow()V

    .line 509
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onShow()V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleUpdateViews()Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    if-eqz v0, :cond_6

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 520
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViews() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_5

    const v0, 0x7f020149

    goto :goto_1

    :cond_5
    const v0, 0x7f02014b

    goto :goto_1

    .line 513
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "insets"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method public getControllerRewindAndForwardExt()Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverlayExt()Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 178
    return-object p0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 233
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 234
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 235
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleHide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onHide()V

    .line 247
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onHide()V

    .line 251
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 253
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 257
    :cond_2
    const-string v1, "Gallery3D/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide() wasHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 337
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 333
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 329
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 341
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canReplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_2

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setViewEnabled(Z)V

    goto :goto_0

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onClick(Landroid/view/View;)V

    .line 356
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 398
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 451
    .local v12, width:I
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 452
    .local v7, insets:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 453
    .local v9, pl:I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 454
    .local v10, pr:I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 455
    .local v11, pt:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 457
    .local v8, pb:I
    sub-int v5, p5, p3

    .line 458
    .local v5, h:I
    sub-int v4, p4, p2

    .line 459
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 461
    .local v6, error:Z
    :goto_0
    sub-int v13, v5, v8

    .line 467
    .local v13, y:I
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v2

    sub-int v2, v13, v2

    add-int/lit8 v2, v2, -0x50

    invoke-virtual {v0, v1, v2, v4, v13}, Landroid/view/View;->layout(IIII)V

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v13, v1

    add-int/lit8 v1, v1, -0x50

    sub-int v2, v4, v10

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v3

    sub-int v3, v13, v3

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->onLayout(III)V

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, v4, v10, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->onLayout(III)V

    .line 477
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 482
    :cond_0
    return-void

    .line 459
    .end local v6           #error:Z
    .end local v13           #y:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 472
    .restart local v6       #error:Z
    .restart local v13       #y:I
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual {v0, v1, v2, v4, v13}, Landroid/view/View;->layout(IIII)V

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v13, v1

    sub-int v2, v4, v10

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->getAddedRightPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v9, v1, v2, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 494
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 495
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 496
    return-void
.end method

.method public onScrubbingEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    .line 539
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 533
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 534
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 528
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 529
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 403
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v2

    .line 407
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    .line 175
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 171
    return-void
.end method

.method public setPlayPauseReplayResume()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onIsRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "setPlayPauseReplayResume is enabled is true"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 391
    :cond_0
    return-void
.end method

.method public setScreenModeManager(Lcom/mediatek/gallery3d/video/ScreenModeManager;)V
    .locals 3
    .parameter "manager"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->addListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V

    .line 552
    :cond_0
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenModeManager("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method public setTimes(II)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/TimeBar;->setTime(II)V

    .line 230
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onIsRTSP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->setCanScrubbing(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllerRewindAndForwardExt:Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setViewEnabled(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 273
    .local v0, wasHidden:Z
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 274
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateViews()V

    .line 275
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 282
    const-string v1, "Gallery3D/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show() wasHidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method public showEnded()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowEnded()V

    .line 203
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 206
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEnded() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowErrorMessage(Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 223
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method public showLoading()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->onShowLoading()V

    .line 212
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 215
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public showPaused()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleShowPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 197
    :cond_0
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPaused() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public showPlaying()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mOverlayExt:Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->handleShowPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 187
    :cond_0
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPlaying() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method
