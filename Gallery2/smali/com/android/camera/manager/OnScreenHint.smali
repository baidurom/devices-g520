.class public Lcom/android/camera/manager/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field static final TAG:Ljava/lang/String; = "OnScreenHint"

.field private static final TOAST_DURATION:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mNextView:Landroid/view/View;

.field private mOrientation:I

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/OnScreenHint;->LOG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/android/camera/manager/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenHint$1;-><init>(Lcom/android/camera/manager/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 205
    new-instance v0, Lcom/android/camera/manager/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenHint$2;-><init>(Lcom/android/camera/manager/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 69
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 76
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 82
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iput-object p1, p0, Lcom/android/camera/manager/OnScreenHint;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/manager/OnScreenHint;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenHint;->handleHide()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 170
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 171
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenHint;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 115
    new-instance v1, Lcom/android/camera/manager/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, result:Lcom/android/camera/manager/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f040023

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iput-object v3, v1, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    .line 125
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 222
    iget v0, p0, Lcom/android/camera/manager/OnScreenHint;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 223
    iput p1, p0, Lcom/android/camera/manager/OnScreenHint;->mOrientation:I

    .line 224
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/manager/OnScreenHint;->mOrientation:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 226
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 134
    sget-boolean v1, Lcom/android/camera/manager/OnScreenHint;->LOG:Z

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "OnScreenHint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setText("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_2

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public showToast()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenHint;->mHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method
