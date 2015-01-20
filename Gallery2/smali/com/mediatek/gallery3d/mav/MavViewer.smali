.class public Lcom/mediatek/gallery3d/mav/MavViewer;
.super Landroid/app/Activity;
.source "MavViewer.java"


# static fields
.field public static final CAMERA_MAV_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final MSG_UPDATE_MAVVIEW:I = 0x1

.field private static final PREFER_SIZE:I = 0x1c4

.field private static final PREFTAG_FIRSTHINTSHOWED:Ljava/lang/String; = "firstshow"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "mav_viewer"

.field private static final TAG:Ljava/lang/String; = "MavViewer"


# instance fields
.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentFrame:I

.field private mDecodeUri:Z

.field private mFirstShowBitmap:Landroid/graphics/Bitmap;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mHasGyroSensor:Z

.field private mLoadFinishTime:J

.field private mMavBitmapArr:[Landroid/graphics/Bitmap;

.field private mMiddleFrame:I

.field private mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

.field private mMpoFilePath:Ljava/lang/String;

.field private mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRotation:I

.field private mRotationFetched:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStartDecodeTime:J

.field private mTotalCount:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera/Mav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/mav/MavViewer;->CAMERA_MAV_IMAGE_BUCKET_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 49
    iput-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

    .line 50
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHasGyroSensor:Z

    .line 54
    iput-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    .line 57
    iput-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mUri:Landroid/net/Uri;

    .line 58
    iput-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mCr:Landroid/content/ContentResolver;

    .line 59
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I

    .line 60
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mCurrentFrame:I

    .line 61
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;

    .line 65
    iput v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I

    .line 66
    iput-boolean v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/gallery3d/mav/MAVView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/gallery3d/mav/MavViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/gallery3d/mav/MavViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mTotalCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/gallery3d/mav/MavViewer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/mav/MavViewer;->calcuSampleSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gallery3d/mav/MavViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/gallery3d/mav/MavViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMiddleFrame:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/gallery3d/mav/MavViewer;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mediatek/gallery3d/mav/MavViewer;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMavBitmapArr:[Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/gallery3d/mav/MavViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mFirstShowBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/gallery3d/mav/MavViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mLoadFinishTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/mediatek/gallery3d/mav/MavViewer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mLoadFinishTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/mediatek/gallery3d/mav/MavViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mStartDecodeTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/mav/MavViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/mav/MavViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/mav/MavViewer;)Lcom/mediatek/mpo/MpoDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/gallery3d/mav/MavViewer;Lcom/mediatek/mpo/MpoDecoder;)Lcom/mediatek/mpo/MpoDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/mav/MavViewer;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mCr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/mav/MavViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/gallery3d/mav/MavViewer;->showErrorAndQuit()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/mav/MavViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/gallery3d/mav/MavViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/gallery3d/mav/MavViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/gallery3d/mav/MavViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I

    return p1
.end method

.method private calcuSampleSize(I)I
    .locals 5
    .parameter "input"

    .prologue
    .line 321
    if-gtz p1, :cond_0

    .line 322
    const/4 v1, -0x1

    .line 329
    :goto_0
    return v1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, sizeOf2P:I
    :goto_1
    if-lez p1, :cond_1

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 327
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 329
    :cond_1
    const-wide/high16 v1, 0x4000

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0
.end method

.method private showErrorAndQuit()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/gallery3d/mav/MavViewer$2;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/mav/MavViewer$2;-><init>(Lcom/mediatek/gallery3d/mav/MavViewer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const v5, 0x7f0b0034

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 373
    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    invoke-virtual {v3, p0}, Lcom/mediatek/gallery3d/mav/MAVView;->configChanged(Landroid/content/Context;)V

    .line 374
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, firstrun:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 377
    .local v1, parent:Landroid/view/ViewParent;
    const/4 v2, 0x0

    .local v2, vg:Landroid/view/ViewGroup;
    move-object v2, v1

    .line 378
    check-cast v2, Landroid/view/ViewGroup;

    .line 379
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 380
    const v3, 0x7f04001f

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 382
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    .end local v1           #parent:Landroid/view/ViewParent;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const-string v0, "MavViewer"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 81
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mLoadFinishTime:J

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mStartDecodeTime:J

    .line 84
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 85
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mGyroSensor:Landroid/hardware/Sensor;

    .line 86
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 87
    const-string v0, "MavViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: gyro sensor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orientation sensor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHasGyroSensor:Z

    .line 90
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/mav/MAVView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    .line 91
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 95
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHasGyroSensor:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/mav/MAVView;->setTouchModeEnabled(Z)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 100
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "mpoFilePath"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "mpoFilePath"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 106
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_3

    .line 108
    const-string v0, "MavViewer"

    const-string v2, "onCreate: get null uri"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 318
    .end local v1           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 88
    .end local v10           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    const/4 v6, 0x0

    .line 116
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "orientation"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "bucket_display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;

    .line 122
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I

    .line 124
    const-string v0, "MavViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mRotationFetched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_4
    if-eqz v6, :cond_5

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    .line 141
    .end local v6           #c:Landroid/database/Cursor;
    :goto_2
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoFilePath:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 142
    const-string v0, "MavViewer"

    const-string v2, "onCreate: get null MPO file path in extra of intent"

    invoke-static {v0, v2}, Lcom/android/gallery3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 129
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 137
    .end local v6           #c:Landroid/database/Cursor;
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    .line 138
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mCr:Landroid/content/ContentResolver;

    .line 139
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mUri:Landroid/net/Uri;

    goto :goto_2

    .line 147
    .end local v1           #uri:Landroid/net/Uri;
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mDecodeUri:Z

    .line 150
    :cond_9
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mHasGyroSensor:Z

    if-nez v0, :cond_a

    .line 151
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/gallery3d/mav/MAVView;->setTouchModeEnabled(Z)V

    .line 156
    const-string v0, "mav_viewer"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 157
    .local v13, pref:Landroid/content/SharedPreferences;
    const-string v0, "firstshow"

    const/4 v2, 0x0

    invoke-interface {v13, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v11, 0x1

    .line 158
    .local v11, isFirstShow:Z
    :goto_3
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 159
    .local v8, firstRun:Landroid/view/View;
    if-eqz v11, :cond_c

    .line 160
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 162
    .local v7, ed:Landroid/content/SharedPreferences$Editor;
    const-string v0, "firstshow"

    const/4 v2, 0x1

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    .end local v7           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v8           #firstRun:Landroid/view/View;
    .end local v11           #isFirstShow:Z
    .end local v13           #pref:Landroid/content/SharedPreferences;
    :cond_a
    :goto_4
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/mediatek/gallery3d/mav/MavViewer$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/mav/MavViewer$1;-><init>(Lcom/mediatek/gallery3d/mav/MavViewer;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    .local v9, getImages:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 157
    .end local v9           #getImages:Ljava/lang/Thread;
    .restart local v13       #pref:Landroid/content/SharedPreferences;
    :cond_b
    const/4 v11, 0x0

    goto :goto_3

    .line 166
    .restart local v8       #firstRun:Landroid/view/View;
    .restart local v11       #isFirstShow:Z
    :cond_c
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 167
    .local v12, parent:Landroid/view/ViewGroup;
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 352
    const-string v0, "MavViewer"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->setResponsibility(Z)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/mav/MAVView;->recycleBitmapArr()V

    .line 356
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMpoDecoder:Lcom/mediatek/mpo/MpoDecoder;

    invoke-virtual {v0}, Lcom/mediatek/mpo/MpoDecoder;->close()V

    .line 360
    :cond_0
    return-void
.end method

.method public onFirstRunDismiss(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 364
    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, firstRun:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 366
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 344
    const-string v0, "MavViewer"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    iget-object v1, v1, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifySensorListener:Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 347
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 335
    const-string v0, "MavViewer"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 337
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mMultiAngleView:Lcom/mediatek/gallery3d/mav/MAVView;

    iget-object v1, v1, Lcom/mediatek/gallery3d/mav/MAVView;->mRectifySensorListener:Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;

    iget-object v2, p0, Lcom/mediatek/gallery3d/mav/MavViewer;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 339
    return-void
.end method
