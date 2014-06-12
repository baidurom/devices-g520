.class Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/gallery3d/video/IControllerRewindAndForward;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerRewindAndForwardExt"
.end annotation


# static fields
.field private static final BUTTON_PADDING:I = 0x28


# instance fields
.field private mButtonWidth:I

.field private mContollerButtons:Landroid/widget/LinearLayout;

.field private mForward:Landroid/widget/ImageView;

.field private mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

.field private mRewind:Landroid/widget/ImageView;

.field private mStop:Landroid/widget/ImageView;

.field private mTimeBarHeight:I

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 1
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 897
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    return-void
.end method


# virtual methods
.method public getAddedRightPadding()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x50

    return v0
.end method

.method public getPlayPauseEanbled()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getTimeBarEanbled()Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->getScrubbing()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 900
    const-string v4, "Gallery3D/MovieControllerOverlay"

    const-string v5, "ControllerRewindAndForwardExt init"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    .line 902
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020099

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 903
    .local v0, button:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mButtonWidth:I

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 906
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    .line 907
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v4

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 909
    .local v3, wrapContent:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 910
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 911
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 913
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 915
    .local v1, buttonParam:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    .line 916
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    const v5, 0x7f020101

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 917
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 918
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 919
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 920
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    .line 924
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    const v5, 0x7f020102

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 925
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 926
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 927
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 928
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    iget v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mTimeBarHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 931
    .local v2, stopLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v8, v7, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 932
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    .line 935
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 936
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 937
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 938
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 939
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 943
    return-void
.end method

.method public onCancelHiding()V
    .locals 2

    .prologue
    .line 965
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onCancelHiding"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 967
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 948
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mStop"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onStopVideo()V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 951
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mRewind"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onRewind()V

    goto :goto_0

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 954
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onClick mForward"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;->onForward()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 970
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onHide"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 972
    return-void
.end method

.method public onLayout(III)V
    .locals 4
    .parameter "l"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 980
    const-string v2, "Gallery3D/MovieControllerOverlay"

    const-string v3, "ControllerRewindAndForwardExt onLayout"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sub-int v2, p2, p1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 982
    .local v0, cl:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->getAddedRightPadding()I

    move-result v2

    add-int v1, v0, v2

    .line 983
    .local v1, cr:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v0, v3, v1, p3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 984
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 975
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onShow"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 977
    return-void
.end method

.method public onStartHiding()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "Gallery3D/MovieControllerOverlay"

    const-string v1, "ControllerRewindAndForwardExt onStartHiding"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mContollerButtons:Landroid/widget/LinearLayout;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 962
    return-void
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setCanReplay(Z)V

    .line 1023
    return-void
.end method

.method public setIListener(Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 992
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt setIListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mListenerForRewind:Lcom/mediatek/gallery3d/video/IControllerRewindAndForward$IRewindAndForwardListener;

    .line 994
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1007
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 1008
    return-void
.end method

.method public setPlayPauseReplayResume()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public setTimes(II)V
    .locals 0
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->setTimes(II)V

    .line 1063
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 1072
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt setViewEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1074
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1075
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->show()V

    .line 1033
    return-void
.end method

.method public showControllerButtonsView(ZZZ)V
    .locals 3
    .parameter "canStop"
    .parameter "canRewind"
    .parameter "canForward"

    .prologue
    .line 998
    const-string v0, "Gallery3D/MovieControllerOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControllerRewindAndForwardExt showControllerButtonsView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mStop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1001
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mRewind:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1002
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->mForward:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1003
    return-void
.end method

.method public showEnded()V
    .locals 0

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showEnded()V

    .line 1048
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1057
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showErrorMessage(Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public showLoading()V
    .locals 0

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showLoading()V

    .line 1053
    return-void
.end method

.method public showPaused()V
    .locals 0

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showPaused()V

    .line 1043
    return-void
.end method

.method public showPlaying()V
    .locals 0

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ControllerRewindAndForwardExt;->showPlaying()V

    .line 1038
    return-void
.end method
