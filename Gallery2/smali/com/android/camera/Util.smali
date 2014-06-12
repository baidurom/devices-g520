.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static final EXTRAS_CAMERA_FACING:Ljava/lang/String; = "android.intent.extras.CAMERA_FACING"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final OPEN_RETRY_COUNT:I = 0x2

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static sClearMemoryLimit:Z

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field private static sIsMAVSupport:Z

.field private static sIsPANORAMASupport:Z

.field private static sLastUri:Landroid/net/Uri;

.field private static sLocation:[I

.field private static sPixelDensity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/Util;->LOG:Z

    .line 84
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    .line 89
    sput-boolean v1, Lcom/android/camera/Util;->sIsMAVSupport:Z

    .line 90
    sput-boolean v1, Lcom/android/camera/Util;->sIsPANORAMASupport:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/Util;->sLastUri:Landroid/net/Uri;

    .line 655
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Util;->sLocation:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static assertError(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 396
    :cond_0
    return-void
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    return-void
.end method

.method public static checkLiveEffect()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    const-string v2, "vdo.cam.effect"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 462
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 486
    if-le p0, p2, :cond_0

    .line 488
    .end local p2
    :goto_0
    return p2

    .line 487
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 488
    goto :goto_0
.end method

.method public static clearMemoryLimit()V
    .locals 8

    .prologue
    .line 885
    sget-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    if-nez v4, :cond_0

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 887
    .local v0, start:J
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 888
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 890
    .local v2, stop:J
    const-string v4, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearMemoryLimit() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 383
    if-nez p0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, t:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 335
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 336
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 338
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 340
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 344
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 354
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 338
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 340
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 349
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 350
    goto :goto_2

    .line 351
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 354
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 317
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 321
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 323
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 324
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 330
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 755
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v1

    .line 756
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "format"
    .parameter "dateTaken"

    .prologue
    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 162
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 480
    sub-float v0, p0, p2

    .line 481
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 482
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 248
    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static dumpParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, flattened:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    const-string v2, "Util"

    const-string v3, "Dump all camera parameters:"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const-string v2, "Util"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method public static dumpRect(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 3
    .parameter "rect"
    .parameter "msg"

    .prologue
    .line 731
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 466
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 776
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/16 v2, 0x190

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;FFJ)V

    .line 779
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 780
    return-void
.end method

.method public static fadeIn(Landroid/view/View;FFJ)V
    .locals 2
    .parameter "view"
    .parameter "startAlpha"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 767
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 773
    :goto_0
    return-void

    .line 769
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 771
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 772
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static varargs fadeIn([Landroid/view/View;)V
    .locals 4
    .parameter "views"

    .prologue
    .line 167
    move-object v0, p0

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 168
    .local v3, view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 788
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 789
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 790
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 791
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static varargs fadeOut([Landroid/view/View;)V
    .locals 4
    .parameter "views"

    .prologue
    .line 173
    move-object v0, p0

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 174
    .local v3, view:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .parameter "currentActivity"

    .prologue
    const/4 v6, -0x1

    .line 626
    const/4 v1, -0x1

    .line 628
    .local v1, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 631
    .local v3, intentCameraId:I
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 634
    .local v2, frontCameraId:I
    if-eq v2, v6, :cond_0

    .line 635
    move v1, v2

    .line 644
    .end local v2           #frontCameraId:I
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 639
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 640
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 641
    move v1, v0

    goto :goto_0
.end method

.method public static getCameraOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 519
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 520
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 521
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 506
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 507
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 509
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 510
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 511
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 515
    :goto_0
    return v1

    .line 513
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 494
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 500
    :goto_0
    :pswitch_0
    return v1

    .line 496
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 497
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 498
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getExifOrientation(Landroid/media/ExifInterface;)I
    .locals 4
    .parameter "exif"

    .prologue
    const/4 v3, -0x1

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, degree:I
    if-eqz p0, :cond_0

    .line 207
    const-string v2, "Orientation"

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, orientation:I
    if-eq v1, v3, :cond_0

    .line 211
    packed-switch v1, :pswitch_data_0

    .line 227
    .end local v1           #orientation:I
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 213
    .restart local v1       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 214
    goto :goto_0

    .line 216
    :pswitch_2
    const/16 v0, 0xb4

    .line 217
    goto :goto_0

    .line 219
    :pswitch_3
    const/16 v0, 0x10e

    .line 220
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 797
    const/4 v1, 0x0

    .line 798
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 799
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 800
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 801
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 810
    :goto_0
    return v1

    .line 803
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 807
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 808
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_0
.end method

.method public static getNotEnoughSpaceAlertMessageId()I
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, confirmStorageMessage:I
    invoke-static {}, Lcom/android/camera/Storage;->isMultiStorage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-static {}, Lcom/android/camera/Storage;->isSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const v0, 0x20500df

    .line 244
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/camera/Storage;->isHaveExternalSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const v0, 0x20500dd

    goto :goto_0

    .line 239
    :cond_1
    const v0, 0x20500de

    goto :goto_0

    .line 242
    :cond_2
    const v0, 0x7f0c00d6

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 18
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL

    .line 543
    .local v2, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    const/4 v8, 0x0

    .line 581
    :cond_0
    :goto_0
    return-object v8

    .line 545
    :cond_1
    const/4 v8, 0x0

    .line 546
    .local v8, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 553
    .local v6, minDiff:D
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 554
    .local v4, display:Landroid/view/Display;
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 555
    .local v9, point:Landroid/graphics/Point;
    invoke-virtual {v4, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 556
    iget v14, v9, Landroid/graphics/Point;->x:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 559
    .local v13, targetHeight:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/Camera$Size;

    .line 560
    .local v12, size:Landroid/hardware/Camera$Size;
    iget v14, v12, Landroid/hardware/Camera$Size;->width:I

    int-to-double v14, v14

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    .line 561
    .local v10, ratio:D
    sub-double v14, v10, p2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f50624dd2f1a9fcL

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_2

    .line 562
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v14, v14

    cmpg-double v14, v14, v6

    if-gez v14, :cond_2

    .line 563
    move-object v8, v12

    .line 564
    iget v14, v12, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v6, v14

    goto :goto_1

    .line 571
    .end local v10           #ratio:D
    .end local v12           #size:Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v8, :cond_0

    .line 572
    const-string v14, "Util"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No preview size match the aspect ratio"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 589
    .local v0, ASPECT_TOLERANCE:D
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 612
    :cond_0
    return-object v3

    .line 591
    :cond_1
    const/4 v3, 0x0

    .line 594
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 595
    .local v6, size:Landroid/hardware/Camera$Size;
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v4, v7, v9

    .line 596
    .local v4, ratio:D
    sub-double v7, v4, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 597
    if-eqz v3, :cond_3

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 598
    :cond_3
    move-object v3, v6

    goto :goto_0

    .line 604
    .end local v4           #ratio:D
    .end local v6           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v3, :cond_0

    .line 605
    const-string v7, "Util"

    const-string v8, "No picture size match the aspect ratio"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 607
    .restart local v6       #size:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_5

    .line 608
    :cond_6
    move-object v3, v6

    goto :goto_1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .parameter "reference"
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 688
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 689
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v0, v2, v4

    .line 690
    .local v0, referenceX:I
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v1, v2, v5

    .line 691
    .local v1, referenceY:I
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 692
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v2, v4

    sub-int/2addr v3, v0

    aput v3, v2, v4

    .line 693
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v2, v5

    sub-int/2addr v3, v1

    aput v3, v2, v5

    .line 694
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    return-object v2
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 109
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/Util;->sPixelDensity:F

    .line 111
    new-instance v2, Lcom/android/camera/Util$ImageFileNamer;

    const v3, 0x7f0c0120

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 113
    return-void
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 652
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 648
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMAVSupport()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/camera/Util;->sIsMAVSupport:Z

    return v0
.end method

.method private static isMountPointValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 139
    const-string v7, ""

    .line 140
    .local v7, path:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 148
    :cond_0
    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 153
    .local v8, valid:Z
    sget-boolean v0, Lcom/android/camera/Util;->LOG:Z

    if-eqz v0, :cond_2

    .line 154
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMountPointValid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") path ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Storage.MOUNT_POINT ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/Storage;->getMountPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    return v8

    .line 148
    .end local v8           #valid:Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isPANORAMASupport()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/camera/Util;->sIsPANORAMASupport:Z

    return v0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 698
    if-nez p0, :cond_0

    .line 710
    :goto_0
    return v2

    .line 701
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 702
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 703
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 708
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 706
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    invoke-static {p0, p1}, Lcom/android/camera/Util;->isMountPointValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    goto :goto_0
.end method

.method public static makeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jpgFilePath"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 182
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 184
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 187
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v4, :cond_1

    .line 200
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 191
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, p1

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 193
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 194
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 195
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 196
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 198
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 360
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 361
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 364
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 378
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 368
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 370
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 373
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 374
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 376
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 377
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 470
    add-int/lit8 p0, p0, -0x1

    .line 471
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 472
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 473
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 474
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 475
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 476
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 8
    .parameter "activity"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 403
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    new-instance v5, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v5}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v5

    .line 406
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_4

    .line 408
    :try_start_0
    instance-of v5, p0, Lcom/android/camera/ActivityBase;

    if-eqz v5, :cond_1

    .line 409
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    .line 412
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 414
    :catch_0
    move-exception v2

    .line 415
    .local v2, e:Lcom/android/camera/CameraHardwareException;
    if-nez v3, :cond_2

    .line 419
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 406
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :catch_1
    move-exception v4

    .line 421
    .local v4, ie:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 427
    .end local v4           #ie:Ljava/lang/InterruptedException;
    :cond_2
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    const-string v5, "Util"

    const-string v6, "Open Camera fail"

    invoke-static {v5, v6, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    throw v2

    .line 433
    :cond_3
    throw v2

    .line 439
    .end local v2           #e:Lcom/android/camera/CameraHardwareException;
    :cond_4
    new-instance v5, Lcom/android/camera/CameraHardwareException;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Should never get here"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static pointInView(FFLandroid/view/View;I)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "v"
    .parameter "rotation"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 659
    if-nez p2, :cond_0

    .line 684
    :goto_0
    return v1

    .line 660
    :cond_0
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, rect:Landroid/graphics/RectF;
    sparse-switch p3, :sswitch_data_0

    .line 680
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 664
    :sswitch_0
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #rect:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sget-object v3, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v3, v6

    int-to-float v3, v3

    sget-object v4, Lcom/android/camera/Util;->sLocation:[I

    aget v4, v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/android/camera/Util;->sLocation:[I

    aget v5, v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 682
    .restart local v0       #rect:Landroid/graphics/RectF;
    :goto_1
    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    .line 683
    .local v1, result:Z
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pointInView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 668
    .end local v1           #result:Z
    :sswitch_1
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #rect:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sget-object v3, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/android/camera/Util;->sLocation:[I

    aget v4, v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Lcom/android/camera/Util;->sLocation:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 670
    .restart local v0       #rect:Landroid/graphics/RectF;
    goto :goto_1

    .line 672
    :sswitch_2
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #rect:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/android/camera/Util;->sLocation:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sget-object v5, Lcom/android/camera/Util;->sLocation:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 674
    .restart local v0       #rect:Landroid/graphics/RectF;
    goto/16 :goto_1

    .line 676
    :sswitch_3
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #rect:Landroid/graphics/RectF;
    sget-object v2, Lcom/android/camera/Util;->sLocation:[I

    aget v2, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/android/camera/Util;->sLocation:[I

    aget v3, v3, v6

    int-to-float v3, v3

    sget-object v4, Lcom/android/camera/Util;->sLocation:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sget-object v5, Lcom/android/camera/Util;->sLocation:[I

    aget v5, v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 678
    .restart local v0       #rect:Landroid/graphics/RectF;
    goto/16 :goto_1

    .line 662
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 745
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 747
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 750
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 751
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 752
    return-void

    :cond_0
    move v0, v1

    .line 745
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 736
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 737
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 738
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 739
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 740
    return-void
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 260
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 261
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 265
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 267
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 268
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 277
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 282
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 284
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    move-object p0, v7

    .line 293
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 269
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 270
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 272
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :catch_0
    move-exception v8

    .line 290
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, changeOrientation:Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 527
    const/4 v0, 0x1

    .line 533
    :goto_0
    if-eqz v0, :cond_0

    .line 534
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 536
    .end local p1
    :cond_0
    return p1

    .line 529
    .restart local p1
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 530
    .local v1, dist:I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 531
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 815
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 821
    if-eqz p1, :cond_1

    .line 822
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 823
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 824
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_0

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 826
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 827
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 829
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 830
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 832
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 839
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 842
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 843
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 849
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_1
    :goto_2
    return-void

    .line 824
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    .restart local v0       #hasLatLon:Z
    :cond_3
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 846
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setLastUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 99
    sput-object p0, Lcom/android/camera/Util;->sLastUri:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method public static setModeSupport(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "parameter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 116
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedCaptureMode()Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, supportCaptureModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mav index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v0, :cond_1

    const-string v1, "mav"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 119
    sput-boolean v6, Lcom/android/camera/Util;->sIsMAVSupport:Z

    .line 123
    :goto_1
    if-eqz v0, :cond_2

    const-string v1, "autorama"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 124
    sput-boolean v6, Lcom/android/camera/Util;->sIsPANORAMASupport:Z

    .line 128
    :goto_2
    return-void

    .line 117
    :cond_0
    const-string v1, "mav"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 121
    :cond_1
    sput-boolean v5, Lcom/android/camera/Util;->sIsMAVSupport:Z

    goto :goto_1

    .line 126
    :cond_2
    sput-boolean v5, Lcom/android/camera/Util;->sIsPANORAMASupport:Z

    goto :goto_2
.end method

.method public static setOrientation(Landroid/view/View;IZ)V
    .locals 4
    .parameter "view"
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 897
    if-nez p0, :cond_1

    .line 906
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 898
    .restart local p0
    :cond_1
    instance-of v3, p0, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_2

    .line 899
    check-cast p0, Lcom/android/camera/ui/Rotatable;

    .end local p0
    invoke-interface {p0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 900
    .restart local p0
    :cond_2
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 901
    check-cast v1, Landroid/view/ViewGroup;

    .line 902
    .local v1, group:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 903
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 902
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .parameter "activity"
    .parameter "msgId"

    .prologue
    .line 443
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 450
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    return-void
.end method

.method public static viewUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 5
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri invalid. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_0
    return-void

    .line 720
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v1

    .line 723
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 724
    :catch_1
    move-exception v0

    .line 725
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "review image fail. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
