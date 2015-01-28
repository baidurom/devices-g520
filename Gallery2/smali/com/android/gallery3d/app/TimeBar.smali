.class public Lcom/android/gallery3d/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TimeBar$Listener;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final SCRUBBER_PADDING_IN_DP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Gallery3D/TimeBar"

.field private static final TEXT_SIZE_IN_DP:I = 0xe

.field public static final UNKNOWN:I = -0x1

.field private static final V_PADDING_IN_DP:I = 0x1e


# instance fields
.field private currentTime:I

.field private final listener:Lcom/android/gallery3d/app/TimeBar$Listener;

.field private mEnableScrubbing:Z

.field private mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

.field private mLastShowTime:I

.field private mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

.field private mSecondaryProgressExt:Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final scrubber:Landroid/graphics/Bitmap;

.field private scrubberCorrection:I

.field private scrubberLeft:I

.field private final scrubberPadding:I

.field private scrubberTop:I

.field private scrubbing:Z

.field private showScrubber:Z

.field private showTimes:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:I

.field private vPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 322
    iput v5, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    .line 359
    new-instance v2, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;

    invoke-direct {v2}, Lcom/android/gallery3d/app/TimeBarSecondaryProgressExtImpl;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;

    .line 360
    new-instance v2, Lcom/android/gallery3d/app/TimeBarInfoExtImpl;

    invoke-direct {v2}, Lcom/android/gallery3d/app/TimeBarInfoExtImpl;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    .line 361
    new-instance v2, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;

    invoke-direct {v2}, Lcom/android/gallery3d/app/TimeBarLayoutExtImpl;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    .line 82
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/TimeBar$Listener;

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    .line 84
    iput-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 88
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    .line 90
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4160

    mul-float v1, v2, v3

    .line 97
    .local v1, textSizeInPx:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02013e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    .line 106
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    .line 108
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41f0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    .line 110
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->init(II)V

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    invoke-interface {v2, v1}, Lcom/android/gallery3d/app/ITimeBarInfoExt;->init(F)V

    .line 112
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;

    invoke-interface {v2}, Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;->init()V

    .line 113
    return-void
.end method

.method private clampScrubber()V
    .locals 4

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 202
    .local v0, half:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 203
    .local v1, max:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 204
    .local v2, min:I
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 205
    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .prologue
    .line 208
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 194
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 195
    .local v1, scrubberRight:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 196
    .local v0, scrubberBottom:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 10
    .parameter "millis"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 306
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 307
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 308
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 309
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 310
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 311
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    if-lez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 132
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->updateBounds()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/gallery3d/app/ITimeBarInfoExt;->updateVisibleText(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 139
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 6

    .prologue
    .line 324
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    if-le v3, v4, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    .line 325
    .local v2, showTime:I
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    if-ne v3, v2, :cond_1

    .line 336
    :goto_1
    return-void

    .line 324
    .end local v2           #showTime:I
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    goto :goto_0

    .line 329
    .restart local v2       #showTime:I
    :cond_1
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, durationText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 331
    .local v1, length:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 332
    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->mLastShowTime:I

    .line 334
    const-string v3, "Gallery3D/TimeBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBounds() durationText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeBounds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz v0, :cond_1

    .line 247
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    invoke-interface {v3}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    invoke-interface {v3}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getTimeOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v1, p0, v2}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getInfoBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/app/ITimeBarInfoExt;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 259
    return-void
.end method

.method public getBarHeight()I
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int v0, v1, v2

    .line 154
    .local v0, barHeight:I
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getBarHeight(ILandroid/graphics/Rect;)I

    move-result v1

    return v1
.end method

.method public getPreferredHeight()I
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int v0, v1, v2

    .line 146
    .local v0, preferredHeight:I
    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getPreferredHeight(ILandroid/graphics/Rect;)I

    move-result v1

    return v1
.end method

.method public getScrubbing()Z
    .locals 3

    .prologue
    .line 353
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableScrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 214
    sub-int v3, p4, p2

    .line 215
    .local v3, w:I
    sub-int v0, p5, p3

    .line 216
    .local v0, h:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-nez v4, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    .line 231
    return-void

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 220
    .local v1, margin:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    .line 223
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    invoke-interface {v4, v1}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getProgressMargin(I)I

    move-result v1

    .line 224
    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/gallery3d/app/TimeBar;->mLayoutExt:Lcom/android/gallery3d/app/ITimeBarLayoutExt;

    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v5, v6}, Lcom/android/gallery3d/app/ITimeBarLayoutExt;->getProgressOffset(Landroid/graphics/Rect;)I

    move-result v5

    add-int v2, v4, v5

    .line 225
    .local v2, progressY:I
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    .line 226
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    const-string v4, "Gallery3D/TimeBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() showScrubber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enableScrubbing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", totalTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scrubbing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    if-eqz v4, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 269
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 271
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    move v2, v3

    .line 302
    :goto_0
    return v2

    .line 273
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_0
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/app/TimeBar;->inScrubber(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    iput-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    .line 275
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberCorrection:I

    .line 276
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v3}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_0

    .line 282
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberCorrection:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 283
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->clampScrubber()V

    .line 284
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    .line 285
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    invoke-interface {v3, v4}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 286
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_0

    .line 294
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 295
    iput-boolean v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetTime()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/app/TimeBar;->setTime(II)V

    .line 179
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 366
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ITimeBarInfoExt;->setInfo(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mInfoExt:Lcom/android/gallery3d/app/ITimeBarInfoExt;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/gallery3d/app/ITimeBarInfoExt;->updateVisibleText(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 371
    return-void
.end method

.method public setScrubbing(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 343
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrubbing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") scrubbing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput-boolean p1, p0, Lcom/android/gallery3d/app/TimeBar;->mEnableScrubbing:Z

    .line 346
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    .line 350
    :cond_0
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 377
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->mSecondaryProgressExt:Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/app/ITimeBarSecondaryProgressExt;->setSecondaryProgress(Landroid/graphics/Rect;I)V

    .line 380
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 381
    return-void
.end method

.method public setShowScrubber(Z)V
    .locals 3
    .parameter "showScrubber"

    .prologue
    .line 183
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowScrubber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") showScrubber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-boolean p1, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    .line 186
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 191
    return-void
.end method

.method public setShowTimes(Z)V
    .locals 0
    .parameter "showTimes"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 175
    return-void
.end method

.method public setTime(II)V
    .locals 3
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 159
    const-string v0, "Gallery3D/TimeBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    if-ne v0, p2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    .line 165
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    .line 166
    if-gtz p2, :cond_1

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/TimeBar;->setScrubbing(Z)V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    goto :goto_0
.end method
