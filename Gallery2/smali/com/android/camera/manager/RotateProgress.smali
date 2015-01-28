.class public Lcom/android/camera/manager/RotateProgress;
.super Lcom/android/camera/manager/ViewManager;
.source "RotateProgress.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "RotateProgress"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/RotateProgress;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f040049

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getViewLayer()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/manager/RotateProgress;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 47
    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    .line 48
    return-object v0
.end method

.method protected onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/camera/manager/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateProgress;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/manager/RotateProgress;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/manager/RotateProgress;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    sget-boolean v0, Lcom/android/camera/manager/RotateProgress;->LOG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "RotateProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh() mMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateProgress;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/manager/RotateProgress;->mMessage:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 72
    sget-boolean v0, Lcom/android/camera/manager/RotateProgress;->LOG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "RotateProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method
