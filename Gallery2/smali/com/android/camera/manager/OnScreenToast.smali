.class public Lcom/android/camera/manager/OnScreenToast;
.super Ljava/lang/Object;
.source "OnScreenToast.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field static final TAG:Ljava/lang/String; = "OnScreenToast"

.field private static final TOAST_DURATION:I = 0x5dc


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mNextView:Landroid/view/View;

.field private mOrientation:I

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/OnScreenToast;->LOG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/android/camera/manager/OnScreenToast$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenToast$1;-><init>(Lcom/android/camera/manager/OnScreenToast;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/android/camera/manager/OnScreenToast$2;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenToast$2;-><init>(Lcom/android/camera/manager/OnScreenToast;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    .line 73
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    .line 80
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 84
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 86
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iput-object p1, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/OnScreenToast;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/manager/OnScreenToast;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/OnScreenToast;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleHide()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 173
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 174
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_1
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isLandcape()Z
    .locals 5

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v1

    .line 262
    .local v1, orientation:I
    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 263
    .local v0, land:Z
    :goto_0
    sget-boolean v2, Lcom/android/camera/manager/OnScreenToast;->LOG:Z

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "OnScreenToast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLandcape() orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    return v0

    .line 262
    .end local v0           #land:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenToast;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 119
    new-instance v1, Lcom/android/camera/manager/OnScreenToast;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/OnScreenToast;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, result:Lcom/android/camera/manager/OnScreenToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f040026

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iput-object v3, v1, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    .line 128
    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    .line 129
    iput-object v2, v1, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    .line 131
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 227
    iget v2, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    if-eq v2, p1, :cond_0

    .line 228
    iput p1, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    .line 229
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->isLandcape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 235
    .local v1, vp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 257
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #vp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 246
    .restart local v1       #vp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 247
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public showToast()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method
