.class public Lcom/android/camera/manager/LearningView;
.super Lcom/android/camera/manager/ViewManager;
.source "LearningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/LearningView$LearningListener;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mListener:Lcom/android/camera/manager/LearningView$LearningListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 26
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/LearningView;->mCancelButton:Landroid/view/View;

    .line 28
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/LearningView;->mContainer:Landroid/view/View;

    .line 29
    iget-object v1, p0, Lcom/android/camera/manager/LearningView;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lcom/android/camera/manager/LearningView;->mContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/manager/LearningView;->mListener:Lcom/android/camera/manager/LearningView$LearningListener;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/LearningView;->mCancelButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/android/camera/manager/LearningView;->mListener:Lcom/android/camera/manager/LearningView$LearningListener;

    invoke-interface {v0}, Lcom/android/camera/manager/LearningView$LearningListener;->onCancelBgTraining()V

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/LearningView;->mContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/manager/LearningView;->mListener:Lcom/android/camera/manager/LearningView$LearningListener;

    invoke-interface {v0}, Lcom/android/camera/manager/LearningView$LearningListener;->onProtectiveCurtainClick()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/manager/LearningView$LearningListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/manager/LearningView;->mListener:Lcom/android/camera/manager/LearningView$LearningListener;

    .line 48
    return-void
.end method
