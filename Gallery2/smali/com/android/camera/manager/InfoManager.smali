.class public Lcom/android/camera/manager/InfoManager;
.super Lcom/android/camera/manager/ViewManager;
.source "InfoManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InfoManager"


# instance fields
.field private mInfoText:Ljava/lang/String;

.field private mInfoView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/InfoManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 23
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/InfoManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/InfoManager;->mInfoView:Landroid/widget/TextView;

    .line 25
    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/InfoManager;->mInfoText:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected onRefresh()V
    .locals 4

    .prologue
    .line 38
    sget-boolean v1, Lcom/android/camera/manager/InfoManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "InfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefresh() mInfoView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/InfoManager;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInfoText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/InfoManager;->mInfoText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/InfoManager;->mInfoView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/camera/manager/InfoManager;->mInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/manager/InfoManager;->mInfoText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/android/camera/manager/InfoManager;->mInfoText:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 44
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/manager/InfoManager;->mInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    .end local v0           #visibility:I
    :cond_1
    return-void

    .line 43
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/camera/manager/InfoManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "InfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showText("

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

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/camera/manager/InfoManager;->mInfoText:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/manager/InfoManager;->show()V

    .line 34
    return-void
.end method
