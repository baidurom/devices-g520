.class Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenModeExt"
.end annotation


# static fields
.field private static final MARGIN:I = 0xa


# instance fields
.field private mParent:Landroid/view/ViewGroup;

.field private mScreenPadding:I

.field private mScreenView:Landroid/widget/ImageView;

.field private mScreenWidth:I

.field private mSeprator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateScreenModeDrawable()V
    .locals 3

    .prologue
    .line 824
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getNextScreenMode()I

    move-result v0

    .line 825
    .local v0, screenMode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    :goto_0
    return-void

    .line 827
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAddedRightPadding()I
    .locals 2

    .prologue
    .line 878
    iget v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .parameter "context"
    .parameter "myTimeBar"

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x2

    const/high16 v7, 0x4120

    const/4 v6, 0x1

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 788
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    float-to-int v1, v4

    .line 789
    .local v1, padding:I
    invoke-virtual {p2, v1, v8, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 791
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 794
    .local v3, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    .line 795
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const v5, 0x7f020091

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 797
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 798
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 799
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 803
    const-string v4, "Gallery3D/MovieControllerOverlay"

    const-string v5, "ScreenModeExt enableRewindAndForward"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    .line 805
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    const v5, 0x7f0200c7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 806
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 807
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 808
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 809
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02008f

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 818
    .local v2, screenButton:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenWidth:I

    .line 819
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenPadding:I

    .line 820
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 821
    return-void

    .line 813
    .end local v2           #screenButton:Landroid/graphics/Bitmap;
    :cond_0
    const-string v4, "Gallery3D/MovieControllerOverlay"

    const-string v5, "ScreenModeExt unenableRewindAndForward"

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCancelHiding()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 848
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/mediatek/gallery3d/video/ScreenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->getNextScreenMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->setScreenMode(I)V

    .line 838
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 840
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 851
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    :cond_0
    return-void
.end method

.method public onLayout(III)V
    .locals 5
    .parameter "width"
    .parameter "paddingRight"
    .parameter "yPosition"

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->getAddedRightPadding()I

    move-result v0

    .line 867
    .local v0, sw:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    sub-int v2, p1, p2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int v3, p3, v3

    sub-int v4, p1, p2

    invoke-virtual {v1, v2, v3, v4, p3}, Landroid/view/View;->layout(IIII)V

    .line 870
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    sub-int v2, p1, p2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x16

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;
    invoke-static {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/TimeBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v3

    sub-int v3, p3, v3

    sub-int v4, p1, p2

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v1, v2, v3, v4, p3}, Landroid/view/View;->layout(IIII)V

    .line 875
    :cond_0
    return-void
.end method

.method public onScreenModeChanged(I)V
    .locals 0
    .parameter "newMode"

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->updateScreenModeDrawable()V

    .line 884
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->enableRewindAndForward:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mSeprator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    :cond_0
    return-void
.end method

.method public onStartHiding()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$ScreenModeExt;->mScreenView:Landroid/widget/ImageView;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)V

    .line 844
    return-void
.end method
