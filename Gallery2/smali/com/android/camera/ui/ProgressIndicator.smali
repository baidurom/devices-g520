.class public Lcom/android/camera/ui/ProgressIndicator;
.super Ljava/lang/Object;
.source "ProgressIndicator.java"


# static fields
.field public static final BLOCK_NUMBERS:I = 0x9

.field public static final BLOCK_NUMBERS_SINGLE3D:I = 0x2

.field private static final HEIGHT_WITHOUT_ZOOMBAR:I = 0x0

.field private static final HEIGHT_WITH_ZOOMBAR:I = 0x28

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final MAV_CAPTURE_NUM:I = 0xf

.field public static final PANORAMA_CAPTURE_NUM:I = 0x9

.field private static final TAG:Ljava/lang/String; = "ProgressIndicator"

.field public static final TYPE_MAV:I = 0x1

.field public static final TYPE_PANO:I = 0x2

.field public static final TYPE_SINGLE3D:I = 0x3


# instance fields
.field private mBlockPadding:I

.field private final mMavBlockSizes:[I

.field private final mPanoBlockSizes:[I

.field private mProgressBars:Landroid/widget/ImageView;

.field private mProgressView:Landroid/view/View;

.field private final mSingle3DBlockSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/ProgressIndicator;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 9
    .parameter "activity"
    .parameter "indicatorType"

    .prologue
    const/4 v8, 0x2

    const/high16 v5, 0x3f80

    const/16 v7, 0x9

    const/high16 v6, 0x3f00

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    .line 25
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    .line 26
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    .line 31
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 40
    const v3, 0x7f0b00b7

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    .line 41
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const v3, 0x7f0b00b8

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .local v2, scale:F
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 47
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_0

    .line 48
    iget v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    iget-object v4, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/camera/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressIndicator;->mMavBlockSizes:[I

    iget v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/camera/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ProgressIndicator;->adjustLayout()V

    .line 76
    return-void

    .line 54
    :cond_2
    if-ne p2, v8, :cond_5

    .line 55
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_4

    .line 56
    iget v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 57
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 58
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    iget-object v4, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 59
    sget-boolean v3, Lcom/android/camera/ui/ProgressIndicator;->LOG:Z

    if-eqz v3, :cond_3

    .line 60
    const-string v3, "ProgressIndicator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPanoBlockSizes[i]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    .end local v0           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/camera/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressIndicator;->mPanoBlockSizes:[I

    iget v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/camera/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 65
    :cond_5
    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    .line 66
    cmpl-float v3, v2, v5

    if-eqz v3, :cond_6

    .line 67
    iget v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    .line 68
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v8, :cond_6

    .line 69
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    iget-object v4, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v3, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72
    .end local v0           #i:I
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/camera/ui/ProgressBarDrawable;

    iget-object v5, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/camera/ui/ProgressIndicator;->mSingle3DBlockSizes:[I

    iget v7, p0, Lcom/android/camera/ui/ProgressIndicator;->mBlockPadding:I

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/android/camera/ui/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 24
    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 26
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public adjustLayout()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    .local v0, progressViewLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .local v1, rp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 104
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/camera/ui/ProgressIndicator;->LOG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "ProgressIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 87
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method
