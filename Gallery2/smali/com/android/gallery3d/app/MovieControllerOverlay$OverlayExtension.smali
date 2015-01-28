.class Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayExtension"
.end annotation


# instance fields
.field private mAlwaysShowBottom:Z

.field private mCanPause:Z

.field private mEnableScrubbing:Z

.field private mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field private mPlayingInfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 1
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    return v0
.end method


# virtual methods
.method public canHidePanel()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBuffering()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 609
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "clearBuffering()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/TimeBar;->setSecondaryProgress(I)V

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->showBuffering(ZI)V

    .line 613
    return-void
.end method

.method public handleHide()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    return v0
.end method

.method public handleShowPaused()Z
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 718
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 719
    const/4 v0, 0x1

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleShowPlaying()Z
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 709
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 710
    const/4 v0, 0x1

    .line 712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUpdateViews()Z
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v2, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 751
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 740
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isPlayingEnd()Z
    .locals 4

    .prologue
    .line 697
    const-string v1, "Gallery3D/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlayingEnd() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, end:Z
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 702
    :cond_0
    const/4 v0, 0x1

    .line 704
    :cond_1
    return v0
.end method

.method public onShowEnded()V
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public onShowErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 737
    return-void
.end method

.method public onShowLoading()V
    .locals 3

    .prologue
    .line 725
    const v0, 0x2050055

    .line 726
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public onShowMainView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 760
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMainView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") errorView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", loadingView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playPauseReplayView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMainView() enableScrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    goto :goto_0
.end method

.method public setBottomPanel(ZZ)V
    .locals 3
    .parameter "alwaysShow"
    .parameter "foreShow"

    .prologue
    const/4 v2, 0x0

    .line 677
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mAlwaysShowBottom:Z

    .line 678
    if-nez p1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 690
    :cond_0
    :goto_0
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBottomPanel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 683
    if-eqz p2, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCanPause(Z)V
    .locals 3
    .parameter "canPause"

    .prologue
    .line 660
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mCanPause:Z

    .line 662
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanPause("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method public setCanScrubbing(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mEnableScrubbing:Z

    .line 668
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 670
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCanScrubbing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public setPlayingInfo(Z)V
    .locals 4
    .parameter "liveStreaming"

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 645
    const v0, 0x2050053

    .line 649
    .local v0, msgId:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    .line 651
    const-string v1, "Gallery3D/MovieControllerOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayingInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") playingInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mPlayingInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 647
    .end local v0           #msgId:I
    :cond_0
    const v0, 0x2050054

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public showBuffering(ZI)V
    .locals 7
    .parameter "fullBuffer"
    .parameter "percent"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 578
    const-string v2, "Gallery3D/MovieControllerOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBuffering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz p1, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/gallery3d/app/TimeBar;->setSecondaryProgress(I)V

    .line 603
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v2, v3, :cond_2

    .line 587
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 589
    :cond_2
    if-ltz p2, :cond_3

    if-ge p2, v5, :cond_3

    .line 590
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->BUFFERING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 591
    const v0, 0x205004f

    .line 592
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    goto :goto_0

    .line 595
    .end local v0           #msgId:I
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    if-ne p2, v5, :cond_4

    .line 596
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 597
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    goto :goto_0

    .line 600
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->mLastState:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 601
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showReconnecting(I)V
    .locals 6
    .parameter "times"

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 618
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 619
    const v0, 0x7f0c0177

    .line 620
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 624
    const-string v2, "Gallery3D/MovieControllerOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showReconnecting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method public showReconnectingError()V
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->clearBuffering()V

    .line 631
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->RETRY_CONNECTING_ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$302(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$State;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 632
    const v0, 0x2050058

    .line 633
    .local v0, msgId:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/TimeBar;->setInfo(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$OverlayExtension;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v3

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 637
    const-string v2, "Gallery3D/MovieControllerOverlay"

    const-string v3, "showReconnectingError()"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method
