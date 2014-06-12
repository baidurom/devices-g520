.class public abstract Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field protected static final INTERVALS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureScreenNail"

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mDebug:Z

.field protected mDebugFlag:I

.field protected mDebugLevel2:Z

.field protected mDrawFrameCount:I

.field protected mDrawStartTime:J

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field protected mRequestCount:I

.field protected mRequestStartTime:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 34
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 38
    const-string v0, "cam.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugFlag:I

    .line 39
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    .line 41
    iput v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    .line 42
    iput v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestCount:I

    .line 43
    iput-wide v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRequestStartTime:J

    .line 44
    iput-wide v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawStartTime:J

    .line 52
    iput v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugFlag:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    .line 48
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugFlag:I

    if-le v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->normalHandlerCapacity()V

    .line 105
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 107
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private initializePriority()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->fullHandlerCapacity()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 100
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 58
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    :cond_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    sget-object v2, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(ILandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->initializePriority()V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 68
    monitor-enter p0

    .line 69
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 135
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 136
    div-int/lit8 v0, p4, 0x2

    add-int v9, p2, v0

    .line 137
    .local v9, cx:I
    div-int/lit8 v0, p5, 0x2

    add-int v10, p3, v0

    .line 138
    .local v10, cy:I
    int-to-float v0, v9

    int-to-float v1, v10

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 139
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 140
    neg-int v0, v9

    int-to-float v0, v0

    neg-int v1, v10

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 141
    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;[FIIII)V

    .line 142
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 144
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebug:Z

    if-eqz v0, :cond_2

    .line 145
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDebugLevel2:Z

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "[Preview] GLCanvas drawing Frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    .line 149
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_2

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 151
    .local v7, currentTime:J
    iget-wide v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawStartTime:J

    sub-long v0, v7, v0

    long-to-int v11, v0

    .line 152
    .local v11, intervals:I
    const-string v0, "SurfaceTextureScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Preview] Drawing frame, fps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    int-to-float v2, v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    int-to-float v3, v11

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millisecond."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-wide v7, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawStartTime:J

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mDrawFrameCount:I

    .line 158
    .end local v7           #currentTime:J
    .end local v11           #intervals:I
    :cond_2
    monitor-exit p0

    goto/16 :goto_0

    .end local v9           #cx:I
    .end local v10           #cy:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullHandlerCapacity()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "fullHandlerCapacity:set urgent display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, -0x8

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 90
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract noDraw()V
.end method

.method public normalHandlerCapacity()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 95
    return-void
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    monitor-enter p0

    .line 79
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 82
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 84
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 85
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 113
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 114
    return-void
.end method
