.class public Lcom/android/camera/manager/RotateDialog;
.super Lcom/android/camera/manager/ViewManager;
.source "RotateDialog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "RotateDialog"


# instance fields
.field private mButton1:Ljava/lang/String;

.field private mButton2:Ljava/lang/String;

.field private mDialogFadeIn:Landroid/view/animation/Animation;

.field private mDialogFadeOut:Landroid/view/animation/Animation;

.field private mMessage:Ljava/lang/String;

.field private mRotateDialog:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleDivider:Landroid/view/View;

.field private mRotateDialogTitleLayout:Landroid/view/View;

.field private mRunnable1:Ljava/lang/Runnable;

.field private mRunnable2:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/RotateDialog;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    return-object v0
.end method

.method private resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 74
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    return-void
.end method

.method private resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    .line 86
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    .line 87
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 1
    .parameter "force"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->collapse(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected fadeIn()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getShowAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/camera/manager/RotateDialog;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    :cond_1
    return-void
.end method

.method protected fadeOut()V
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getHideAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/manager/RotateDialog;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_1
    return-void
.end method

.method protected getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f040048

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getViewLayer()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    .line 62
    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 63
    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 64
    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0b00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0b00d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    .line 69
    return-object v0
.end method

.method protected onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/camera/manager/RotateDialog;->resetRotateDialog()V

    .line 93
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/manager/RotateDialog$1;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/RotateDialog$1;-><init>(Lcom/android/camera/manager/RotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/manager/RotateDialog$2;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/RotateDialog$2;-><init>(Lcom/android/camera/manager/RotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_4
    sget-boolean v0, Lcom/android/camera/manager/RotateDialog;->LOG:Z

    if-eqz v0, :cond_5

    .line 138
    const-string v0, "RotateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh() mTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mButton1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mButton2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunnable1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunnable2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/camera/manager/RotateDialog;->resetValues()V

    .line 147
    iput-object p1, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    .line 152
    iput-object p6, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 154
    return-void
.end method
