.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CropImage$IncomingHandler;,
        Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final ACTION_CROP:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field public static final DOWNLOAD_BUCKET:Ljava/io/File; = null

.field private static final EXIF_TAGS:[Ljava/lang/String; = null

.field private static final HEIGHT:Ljava/lang/String; = "height"

#the value of this static final field might be set in the static constructor
.field private static final IS_DRM_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_STEREO_DISPLAY_SUPPORTED:Z = false

.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_NO_FACE_DETECTION:Ljava/lang/String; = "noFaceDetection"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAX_BACKUP_IMAGE_SIZE:I = 0x140

.field private static final MAX_FILE_INDEX:I = 0x3e8

.field private static final MAX_PIXEL_COUNT:I = 0x4c4b40

.field private static final MSG_3D_WALLPAPER_RESULT_ERROR:I = 0x67

.field private static final MSG_3D_WALLPAPER_RESULT_OK:I = 0x66

.field private static final MSG_BITMAP:I = 0x2

.field private static final MSG_CHECK_STORAGE:I = 0x68

.field private static final MSG_LARGE_BITMAP:I = 0x1

.field private static final MSG_SAVE_COMPLETE:I = 0x3

.field private static final MSG_SECOND_BITMAP:I = 0x5

.field private static final MSG_SET_3D_WALLPAPER:I = 0x65

.field private static final MSG_SHOW_SAVE_ERROR:I = 0x4

.field public static final SET_3D_WALLPAPER:Ljava/lang/String; = "com.mediatek.stereo3dwallpaper.SET_WALLPAPER"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_SAVE_DONE:I = 0x3

.field private static final STATE_SAVING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final TILE_SIZE:I = 0x200

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCropView:Lcom/android/gallery3d/ui/CropView;

.field private mDecodedSecondImage:Z

.field private mDoFaceDetection:Z

.field private mFilePath:Ljava/lang/String;

.field private mIsBounded:Z

.field private mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadSecondBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field final mMessenger:Landroid/os/Messenger;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/os/Messenger;

.field private mSetStereoWallpaper:Z

.field private mState:I

.field private mStereoWallpaperIntent:Landroid/content/Intent;

.field private mStereoWallpaperUri:Landroid/net/Uri;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mTIVA:Lcom/android/gallery3d/ui/TileImageViewAdapter;

.field private mUseRegionDecoder:Z

.field private mWorker:Landroid/os/HandlerThread;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    .line 160
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isDrmSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/CropImage;->IS_DRM_SUPPORTED:Z

    .line 165
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isStereoDisplaySupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/CropImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    .line 1418
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 167
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    .line 168
    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mService:Landroid/os/Messenger;

    .line 171
    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperUri:Landroid/net/Uri;

    .line 173
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mDecodedSecondImage:Z

    .line 175
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1544
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/gallery3d/app/CropImage$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/CropImage$IncomingHandler;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMessenger:Landroid/os/Messenger;

    .line 1549
    new-instance v0, Lcom/android/gallery3d/app/CropImage$7;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/CropImage$7;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mConnection:Landroid/content/ServiceConnection;

    .line 1618
    new-instance v0, Lcom/android/gallery3d/app/CropImage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/CropImage$8;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/CropImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/gallery3d/app/CropImage;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadSecondBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/gallery3d/app/CropImage;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->isLocalOrMediaUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/app/CropImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/app/CropImage;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->isFileInStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/gallery3d/app/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->checkStorageState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onSecondBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/CropImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mStereoWallpaperUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/gallery3d/app/CropImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private checkStorageState()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 1707
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1708
    .local v3, intentUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-nez v10, :cond_0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/CropImage;->isLocalOrMediaUri(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1709
    :cond_0
    const/4 v9, 0x1

    .line 1732
    :cond_1
    :goto_0
    return v9

    .line 1711
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mFilePath:Ljava/lang/String;

    .line 1712
    .local v1, filePath:Ljava/lang/String;
    const-string v10, "CropImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkStorageState: filePath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    if-eqz v1, :cond_1

    .line 1716
    const-string v10, "storage"

    invoke-virtual {p0, v10}, Lcom/android/gallery3d/app/CropImage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 1717
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 1718
    .local v5, storageList:[Ljava/lang/String;
    const-string v10, "CropImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkStorageState: storageList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    if-eqz v5, :cond_1

    array-length v10, v5

    if-lez v10, :cond_1

    .line 1723
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v7, v0, v2

    .line 1724
    .local v7, storagePath:Ljava/lang/String;
    const-string v10, "CropImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkStorageState: storagePath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-direct {p0, v1, v7}, Lcom/android/gallery3d/app/CropImage;->isFileInStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1726
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1727
    .local v8, volumeState:Ljava/lang/String;
    const-string v9, "CropImage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkStorageState: file in storage {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}, state="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto/16 :goto_0

    .line 1723
    .end local v8           #volumeState:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 634
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private static copyExif(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;II)V
    .locals 5
    .parameter "item"
    .parameter "destination"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 1437
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v0, newExif:Landroid/media/ExifInterface;
    invoke-static {p0, v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->extractExifValues(Lcom/android/gallery3d/data/MediaObject;Landroid/media/ExifInterface;)V

    .line 1439
    const-string v2, "ImageWidth"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v2, "ImageLength"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    .end local v0           #newExif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot copy exif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .parameter "source"
    .parameter "destination"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 1450
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v6, oldExif:Landroid/media/ExifInterface;
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v5, newExif:Landroid/media/ExifInterface;
    const-string v10, "ImageWidth"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v10, "ImageLength"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v10, "Orientation"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    sget-object v1, Lcom/android/gallery3d/app/CropImage;->EXIF_TAGS:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v8, v1, v3

    .line 1458
    .local v8, tag:Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1459
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1460
    invoke-virtual {v5, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1465
    .end local v8           #tag:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_1
    const-string v10, "FNumber"

    invoke-virtual {v6, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1466
    .restart local v9       #value:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1468
    :try_start_1
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1469
    .local v0, aperture:F
    const-string v10, "FNumber"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v12, 0x4120

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/10"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1498
    .end local v0           #aperture:F
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 1502
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #newExif:Landroid/media/ExifInterface;
    .end local v6           #oldExif:Landroid/media/ExifInterface;
    .end local v9           #value:Ljava/lang/String;
    :goto_2
    return-void

    .line 1471
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #newExif:Landroid/media/ExifInterface;
    .restart local v6       #oldExif:Landroid/media/ExifInterface;
    .restart local v9       #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1472
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v10, "CropImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot parse aperture: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1499
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #newExif:Landroid/media/ExifInterface;
    .end local v6           #oldExif:Landroid/media/ExifInterface;
    .end local v9           #value:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1500
    .local v7, t:Ljava/lang/Throwable;
    const-string v10, "CropImage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot copy exif: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 414
    const-string v0, "JPEG"

    .line 415
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 416
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    :cond_0
    const-string v0, "PNG"

    .line 423
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private drawInTiles(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 14
    .parameter "jc"
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 937
    move/from16 v0, p6

    mul-int/lit16 v6, v0, 0x200

    .line 938
    .local v6, tileSize:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 939
    .local v5, tileRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 940
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 941
    move/from16 v0, p6

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 942
    move-object/from16 v0, p5

    iget v11, v0, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    move-object/from16 v0, p5

    iget v12, v0, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 943
    move/from16 v0, p6

    int-to-float v11, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    move/from16 v0, p6

    int-to-float v12, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 945
    new-instance v4, Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-direct {v4, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 946
    .local v4, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p4

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .local v7, tx:I
    const/4 v9, 0x0

    .line 947
    .local v9, x:I
    :goto_0
    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-ge v7, v11, :cond_0

    .line 948
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .local v8, ty:I
    const/4 v10, 0x0

    .line 949
    .local v10, y:I
    :goto_1
    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v11, :cond_3

    .line 950
    add-int v11, v7, v6

    add-int v12, v8, v6

    invoke-virtual {v5, v7, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 951
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 956
    :try_start_0
    const-string v11, "CropImage"

    const-string v12, "drawInTiles() before synchronize"

    invoke-static {v11, v12}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :try_start_1
    const-string v11, "CropImage"

    const-string v12, "drawInTiles() begin decodeRegion()"

    invoke-static {v11, v12}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 960
    const-string v11, "CropImage"

    const-string v12, "drawInTiles() job was canceled!"

    invoke-static {v11, v12}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    monitor-exit p3

    .line 974
    .end local v8           #ty:I
    .end local v10           #y:I
    :cond_0
    return-void

    .line 963
    .restart local v8       #ty:I
    .restart local v10       #y:I
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 964
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const-string v11, "CropImage"

    const-string v12, "drawInTiles() end decodeRegion()"

    invoke-static {v11, v12}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    int-to-float v11, v9

    int-to-float v12, v10

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v11, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 967
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 949
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    add-int/2addr v8, v6

    add-int/lit16 v10, v10, 0x200

    goto :goto_1

    .line 965
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v11, "CropImage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawInTiles:got exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 947
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    add-int/2addr v7, v6

    add-int/lit16 v9, v9, 0x200

    goto :goto_0
.end method

.method private getCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "jc"
    .parameter "rect"

    .prologue
    .line 715
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: rect="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 720
    .local v13, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 721
    .local v17, outputX:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 722
    .local v18, outputY:I
    if-eqz v13, :cond_0

    .line 723
    const-string v3, "outputX"

    move/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 724
    const-string v3, "outputY"

    move/from16 v0, v18

    invoke-virtual {v13, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 727
    :cond_0
    mul-int v3, v17, v18

    const v4, 0x4c4b40

    if-le v3, v4, :cond_1

    .line 728
    const v3, 0x4a989680

    move/from16 v0, v17

    int-to-float v4, v0

    div-float/2addr v3, v4

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v25

    .line 729
    .local v25, scale:F
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale down the cropped image: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 731
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float v3, v3, v25

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 736
    .end local v25           #scale:F
    :cond_1
    const/high16 v26, 0x3f80

    .line 737
    .local v26, scaleX:F
    const/high16 v27, 0x3f80

    .line 738
    .local v27, scaleY:F
    new-instance v8, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 739
    .local v8, dest:Landroid/graphics/Rect;
    if-eqz v13, :cond_2

    const-string v3, "scale"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 741
    :cond_2
    move/from16 v0, v17

    int-to-float v3, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v26, v3, v4

    .line 742
    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v27, v3, v4

    .line 743
    if-eqz v13, :cond_3

    const-string v3, "scaleUpIfNeeded"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 745
    :cond_3
    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_4

    const/high16 v26, 0x3f80

    .line 746
    :cond_4
    const/high16 v3, 0x3f80

    cmpl-float v3, v27, v3

    if-lez v3, :cond_5

    const/high16 v27, 0x3f80

    .line 751
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v26

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 752
    .local v21, rectWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 753
    .local v20, rectHeight:I
    sub-int v3, v17, v21

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v4, v18, v20

    int-to-float v4, v4

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int v6, v17, v21

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v7, v18, v20

    int-to-float v7, v7

    const/high16 v29, 0x4000

    div-float v7, v7, v29

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v8, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    .line 760
    .local v28, source:Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 762
    .local v22, result:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 763
    .local v5, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 888
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v22           #result:Landroid/graphics/Bitmap;
    .end local v28           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v22

    .line 716
    .end local v8           #dest:Landroid/graphics/Rect;
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v17           #outputX:I
    .end local v18           #outputY:I
    .end local v20           #rectHeight:I
    .end local v21           #rectWidth:I
    .end local v26           #scaleX:F
    .end local v27           #scaleY:F
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 767
    .restart local v8       #dest:Landroid/graphics/Rect;
    .restart local v13       #extras:Landroid/os/Bundle;
    .restart local v17       #outputX:I
    .restart local v18       #outputY:I
    .restart local v20       #rectHeight:I
    .restart local v21       #rectWidth:I
    .restart local v26       #scaleX:F
    .restart local v27       #scaleY:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    if-eqz v3, :cond_11

    .line 768
    const-string v3, "CropImage"

    const-string v4, "getCroppedImage: use region decoder"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v24

    .line 770
    .local v24, rotation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    move/from16 v0, v24

    rsub-int v6, v0, 0x168

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v6}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 772
    move/from16 v0, v24

    rsub-int v3, v0, 0x168

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1, v3}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 774
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 775
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v9

    .line 777
    .local v9, sample:I
    move-object/from16 v0, v16

    iput v9, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v18

    if-ne v0, v3, :cond_10

    if-nez v24, :cond_10

    .line 787
    const-string v3, "CropImage"

    const-string v4, "getCroppedImage: use decoding result"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v4

    .line 790
    const/4 v10, 0x0

    .line 792
    .local v10, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:decodeRegion(rect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 794
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:decodeRegion() returns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_2
    if-nez v10, :cond_b

    .line 803
    const/16 v15, 0x8

    .line 804
    .local v15, maxTryNum:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    const/16 v3, 0x8

    if-ge v14, v3, :cond_8

    .line 806
    :try_start_1
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 807
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:try for sample size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    :try_start_2
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:decodeRegion(rect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 812
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:decodeRegion() returns"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 817
    :goto_4
    if-eqz v10, :cond_9

    .line 821
    :cond_8
    if-nez v10, :cond_a

    .line 822
    :try_start_3
    const-string v3, "CropImage"

    const-string v6, "getCroppedImage:failed to get a Bitmap"

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v22, 0x0

    monitor-exit v4

    goto/16 :goto_1

    .line 859
    .end local v14           #i:I
    .end local v15           #maxTryNum:I
    :catchall_0
    move-exception v3

    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 795
    :catch_0
    move-exception v12

    .line 796
    .local v12, e:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:out of memory when decoding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 813
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    .restart local v14       #i:I
    .restart local v15       #maxTryNum:I
    :catch_1
    move-exception v12

    .line 814
    .restart local v12       #e:Ljava/lang/OutOfMemoryError;
    const-string v3, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCroppedImage:out of memory when decoding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v10, 0x0

    goto :goto_4

    .line 804
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 826
    :cond_a
    if-eqz v13, :cond_e

    .line 827
    const-string v3, "outputX"

    const/4 v6, 0x0

    invoke-virtual {v13, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_d

    const-string v3, "outputY"

    const/4 v6, 0x0

    invoke-virtual {v13, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v0, v18

    if-ne v0, v3, :cond_d

    .line 831
    const-string v3, "CropImage"

    const-string v6, "getCroppedImage: output dimensions unchanged"

    invoke-static {v3, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v14           #i:I
    .end local v15           #maxTryNum:I
    :cond_b
    :goto_6
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-direct {v0, v3, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 847
    .end local p2
    .local v19, rect:Landroid/graphics/Rect;
    const/16 v23, 0x0

    .line 848
    .local v23, ret:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_f

    :try_start_5
    const-string v3, "scaleUpIfNeeded"

    const/4 v6, 0x0

    invoke-virtual {v13, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-gtz v3, :cond_c

    const/high16 v3, 0x3f80

    cmpl-float v3, v27, v3

    if-lez v3, :cond_f

    .line 850
    :cond_c
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 851
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 852
    .local v11, c:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v10, v0, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 853
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 858
    .end local v11           #c:Landroid/graphics/Canvas;
    :goto_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 p2, v19

    .end local v19           #rect:Landroid/graphics/Rect;
    .restart local p2
    move-object/from16 v22, v23

    goto/16 :goto_1

    .line 834
    .end local v23           #ret:Landroid/graphics/Bitmap;
    .restart local v14       #i:I
    .restart local v15       #maxTryNum:I
    :cond_d
    :try_start_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 835
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    goto :goto_6

    .line 840
    :cond_e
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 841
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v18

    goto :goto_6

    .line 855
    .end local v14           #i:I
    .end local v15           #maxTryNum:I
    .end local p2
    .restart local v19       #rect:Landroid/graphics/Rect;
    .restart local v23       #ret:Landroid/graphics/Bitmap;
    :cond_f
    move-object/from16 v23, v10

    goto :goto_7

    .line 861
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v19           #rect:Landroid/graphics/Rect;
    .end local v23           #ret:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_10
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [region] => createBitmap("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 864
    .restart local v22       #result:Landroid/graphics/Bitmap;
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [region] <= createBitmap("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 866
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-static {v5, v0, v1, v2}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 867
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [region] => drawInTiles: rect="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", dest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sample="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/gallery3d/app/CropImage;->drawInTiles(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 870
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [region] <= drawInTiles: rect="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", dest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", sample="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 874
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v9           #sample:I
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v22           #result:Landroid/graphics/Bitmap;
    .end local v24           #rotation:I
    :cond_11
    const-string v3, "CropImage"

    const-string v4, "getCroppedImage: no region decoder"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v24

    .line 876
    .restart local v24       #rotation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v4

    move/from16 v0, v24

    rsub-int v6, v0, 0x168

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4, v6}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 878
    move/from16 v0, v24

    rsub-int v3, v0, 0x168

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v8, v0, v1, v3}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 879
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [noregion] => createBitmap("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 881
    .restart local v22       #result:Landroid/graphics/Bitmap;
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [noregion] <= createBitmap("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 883
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-static {v5, v0, v1, v2}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 884
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [noregion] => drawBitmap: rect="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", dest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v3, v0, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 887
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCroppedImage: [noregion] <= drawBitmap: rect="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", dest="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 859
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v22           #result:Landroid/graphics/Bitmap;
    .end local p2
    .restart local v9       #sample:I
    .restart local v10       #bmp:Landroid/graphics/Bitmap;
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v19       #rect:Landroid/graphics/Rect;
    .restart local v23       #ret:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v3

    move-object/from16 p2, v19

    .end local v19           #rect:Landroid/graphics/Rect;
    .restart local p2
    goto/16 :goto_5
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 650
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 645
    goto :goto_0

    .line 650
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1314
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v11

    .line 1315
    .local v11, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v12

    .line 1316
    .local v12, path:Lcom/android/gallery3d/data/Path;
    if-nez v12, :cond_1

    .line 1317
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get path for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", or no data given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    .line 1352
    :cond_0
    :goto_0
    return-object v10

    .line 1321
    :cond_1
    const/4 v10, 0x0

    .line 1323
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    :try_start_0
    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v10

    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    check-cast v10, Lcom/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    .restart local v10       #item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v10, :cond_0

    instance-of v1, v10, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v1, :cond_0

    .line 1334
    const/4 v7, 0x0

    .line 1336
    .local v7, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1337
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1338
    move-object v0, v10

    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    move-object v1, v0

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/gallery3d/data/LocalImage;->rotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1346
    :cond_2
    if-eqz v7, :cond_0

    .line 1347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1324
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catch_0
    move-exception v8

    .line 1325
    .local v8, e:Ljava/lang/RuntimeException;
    const-string v3, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get item for path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    .line 1326
    goto :goto_0

    .line 1340
    .end local v8           #e:Ljava/lang/RuntimeException;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v10       #item:Lcom/android/gallery3d/data/MediaItem;
    :catch_1
    move-exception v9

    .line 1342
    .local v9, ie:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "CropImage"

    const-string v3, "Exception when trying to fetch orientation info"

    invoke-static {v1, v3, v9}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1346
    if-eqz v7, :cond_0

    .line 1347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1343
    .end local v9           #ie:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v13

    .line 1344
    .local v13, se:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "CropImage"

    const-string v3, "Exception when trying to fetch orientation info"

    invoke-static {v1, v3, v13}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1346
    if-eqz v7, :cond_0

    .line 1347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1346
    .end local v13           #se:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 1347
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private getOutputMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method private initFilePathFromIntent()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1752
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1753
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 1754
    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mFilePath:Ljava/lang/String;

    .line 1778
    :goto_0
    return-void

    .line 1757
    :cond_0
    const/4 v7, 0x0

    .line 1758
    .local v7, filePath:Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v7

    .line 1761
    :cond_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1764
    const/4 v6, 0x0

    .line 1766
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1767
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1771
    :cond_2
    if-eqz v6, :cond_3

    .line 1772
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1777
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    iput-object v7, p0, Lcom/android/gallery3d/app/CropImage;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 1771
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1772
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private initWorkerThread()V
    .locals 2

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    :goto_0
    return-void

    .line 1787
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cropimage-worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    .line 1788
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1789
    new-instance v0, Lcom/android/gallery3d/app/CropImage$9;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/CropImage$9;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorkerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initializeData()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1116
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1118
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1119
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1120
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 1124
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 1127
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 1128
    const-string v2, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeData: bitmap in intent! ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTileProvider;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v6, 0x140

    invoke-direct {v2, v5, v6}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    .line 1132
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v2, v5, v4}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1133
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_3

    .line 1134
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1138
    :goto_1
    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1201
    :goto_2
    return-void

    :cond_2
    move v2, v4

    .line 1120
    goto :goto_0

    .line 1136
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 1143
    :cond_4
    const/4 v2, 0x0

    const v5, 0x7f0c01e4

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v5, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1148
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_5

    .line 1149
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 1151
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_6

    .line 1152
    const-string v2, "CropImage"

    const-string v3, "initializeData: cannot find media item from intent data"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1154
    const v2, 0x7f0c020d

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_2

    .line 1160
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initFilePathFromIntent()V

    .line 1162
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    move v1, v3

    .line 1166
    .local v1, supportedByBitmapRegionDecoder:Z
    :goto_3
    if-eqz v1, :cond_8

    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-nez v2, :cond_8

    move v1, v3

    .line 1169
    :goto_4
    if-eqz v1, :cond_9

    .line 1170
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/CropImage$LoadDataTask;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/android/gallery3d/app/CropImage$5;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/CropImage$5;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2

    .end local v1           #supportedByBitmapRegionDecoder:Z
    :cond_7
    move v1, v4

    .line 1162
    goto :goto_3

    .restart local v1       #supportedByBitmapRegionDecoder:Z
    :cond_8
    move v1, v4

    .line 1166
    goto :goto_4

    .line 1199
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->startLoadBitmapTask()V

    goto :goto_2
.end method

.method private isFileInStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"
    .parameter "storagePath"

    .prologue
    .line 1690
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, sp1:[Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1692
    .local v3, sp2:[Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    array-length v4, v2

    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 1693
    :cond_0
    const/4 v1, 0x0

    .line 1703
    :cond_1
    :goto_0
    return v1

    .line 1695
    :cond_2
    const/4 v1, 0x1

    .line 1696
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1697
    aget-object v4, v3, v0

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1698
    const/4 v1, 0x0

    .line 1699
    goto :goto_0

    .line 1696
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isLocalOrMediaUri(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1736
    const-string v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocalUri: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    if-nez p1, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return v0

    .line 1740
    :cond_1
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1741
    goto :goto_0

    .line 1742
    :cond_2
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1744
    goto :goto_0
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 1039
    if-nez p1, :cond_1

    .line 1040
    const-string v0, "CropImage"

    const-string v1, "onBitmapAvailable: failed to load bitmap"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const v0, 0x7f0c01eb

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 1046
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 1048
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1050
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v1, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v2, 0x200

    invoke-direct {v1, p1, v2}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1052
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 1058
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadSecondBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$4;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadSecondBitmapTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 8
    .parameter "regionDecoder"

    .prologue
    const/high16 v7, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 979
    if-nez p1, :cond_0

    .line 984
    const-string v4, "CropImage"

    const-string v5, "onBitmapRegionDecoderAvailable:failed and start to load thumb"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->startLoadBitmapTask()V

    .line 1036
    :goto_0
    return-void

    .line 988
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 989
    iput-boolean v5, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 990
    iput v5, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 992
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 993
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    .line 994
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 996
    .local v0, height:I
    sget-boolean v4, Lcom/android/gallery3d/app/CropImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/2addr v4, v7

    if-eqz v4, :cond_1

    .line 999
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v4

    invoke-static {v5, v4, v3}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v3

    .line 1001
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getStereoLayout()I

    move-result v4

    invoke-static {v6, v4, v0}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->adjustDim(ZII)I

    move-result v0

    .line 1005
    :cond_1
    const/4 v4, -0x1

    const v5, 0x75300

    invoke-static {v3, v0, v4, v5}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSize(IIII)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1007
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1010
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 1011
    const-string v4, "CropImage"

    const-string v5, "region decoder failed to decode the image!"

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const v4, 0x7f0c0160

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 1018
    :cond_2
    new-instance v2, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    .line 1019
    .local v2, tiva:Lcom/android/gallery3d/ui/TileImageViewAdapter;
    invoke-virtual {v2, v6}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setEnablePQ(Z)V

    .line 1022
    sget-boolean v4, Lcom/android/gallery3d/app/CropImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/2addr v4, v7

    if-eqz v4, :cond_3

    .line 1025
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v4, v3, v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Bitmap;II)V

    .line 1029
    :cond_3
    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mTIVA:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 1030
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1031
    iget-boolean v4, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v4, :cond_4

    .line 1032
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1034
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto/16 :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 656
    const-string v3, "CropImage"

    const-string v4, "onSaveClicked"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 658
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 659
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 660
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 661
    if-eqz v1, :cond_2

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f0c01fb

    .line 664
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 666
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mTIVA:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    if-eqz v3, :cond_1

    .line 673
    iget-boolean v3, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-nez v3, :cond_3

    .line 674
    const-string v3, "CropImage"

    const-string v4, "onSaveClick:clear TIVA\'s region decoder!"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mTIVA:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->clearRegionDecoder()V

    .line 682
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/android/gallery3d/app/CropImage$3;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/CropImage$3;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 661
    .end local v2           #messageId:I
    :cond_2
    const v2, 0x7f0c01f1

    goto :goto_1

    .line 678
    .restart local v2       #messageId:I
    :cond_3
    const-string v3, "CropImage"

    const-string v4, "onSaveClick:set null RegionDecoder"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private onSaveResumed()V
    .locals 6

    .prologue
    .line 1245
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1246
    .local v0, extra:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "set-as-wallpaper"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0c01fb

    .line 1249
    .local v1, messageId:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1251
    return-void

    .line 1246
    .end local v1           #messageId:I
    :cond_0
    const v1, 0x7f0c01f1

    goto :goto_0
.end method

.method private onSecondBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 1079
    const-string v1, "CropImage"

    const-string v2, "onSecondBitmapAvailable()"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string v1, "CropImage"

    const-string v2, "onSecondBitmapAvailable:got null second image"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v3, 0x200

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 1088
    new-instance v0, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>()V

    .line 1089
    .local v0, tiva:Lcom/android/gallery3d/ui/TileImageViewAdapter;
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 1090
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->setStereoScreenNail(ILandroid/graphics/Bitmap;)V

    .line 1092
    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mTIVA:Lcom/android/gallery3d/ui/TileImageViewAdapter;

    .line 1094
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/CropView;->setStereoMode(Z)V

    .line 1095
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    goto :goto_0
.end method

.method private registerReceiverIfNeeded()V
    .locals 2

    .prologue
    .line 1659
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CropImage;->isLocalOrMediaUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1664
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initWorkerThread()V

    .line 1666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1667
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1668
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1669
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1670
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/CropImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 894
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 895
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 896
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 897
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 901
    :goto_0
    return-void

    .line 899
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 905
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 908
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 909
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 931
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 911
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 912
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 913
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 914
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 918
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 919
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 920
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 921
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 925
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 926
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 927
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 928
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 909
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 607
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 608
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v1, Lcom/android/gallery3d/app/CropImage$2;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/CropImage$2;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 614
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 615
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 617
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 618
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 615
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v1

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 618
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 624
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 630
    :goto_0
    return v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CropImage"

    const-string v2, "cannot write output"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 10
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 576
    sget-object v5, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 577
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "cannot create download folder"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 580
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 581
    .local v1, now:J
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, filename:Ljava/lang/String;
    sget-object v5, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 585
    .local v3, output:Ljava/io/File;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    .line 600
    :goto_0
    return-object v5

    .line 587
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 588
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v5, "_display_name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v5, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    const-string v5, "date_modified"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    const-string v5, "date_added"

    div-long v6, v1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 593
    const-string v5, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v5, "_data"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 597
    const-string v5, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v5, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 13
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/android/gallery3d/data/LocalImage;

    .line 541
    .local v2, localImage:Lcom/android/gallery3d/data/LocalImage;
    new-instance v5, Ljava/io/File;

    iget-object v9, v2, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v5, oldPath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, filename:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 546
    .local v7, pos:I
    if-ltz v7, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 548
    .local v6, output:Ljava/io/File;
    if-nez v6, :cond_1

    const/4 v9, 0x0

    .line 571
    :goto_0
    return-object v9

    .line 550
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/gallery3d/app/CropImage;->copyExif(Ljava/lang/String;Ljava/lang/String;II)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v3, v9, v11

    .line 554
    .local v3, now:J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    iget-object v10, v2, Lcom/android/gallery3d/data/LocalMediaItem;->caption:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v9, "_display_name"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v9, "datetaken"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalMediaItem;->dateTakenInMs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    const-string v9, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v9, "date_added"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    const-string v9, "mime_type"

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v9, "orientation"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v9, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v9, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v9, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    iget-wide v9, v2, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v11, v2, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 568
    const-string v9, "latitude"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalMediaItem;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 569
    const-string v9, "longitude"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 571
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, candidate:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, fileExtension:Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_0

    .line 442
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 452
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 453
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to create new file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 441
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 456
    :cond_3
    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 457
    invoke-virtual {v0, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 460
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6, v3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 474
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 475
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 465
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 467
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 468
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to save image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_4
    move-object v5, v0

    .line 479
    goto :goto_1
.end method

.method private savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 17
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 502
    sget-object v13, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_0

    .line 503
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "cannot create download folder"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 506
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v13}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, filename:Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v3, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 508
    .local v11, pos:I
    if-ltz v11, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 509
    :cond_1
    sget-object v13, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 510
    .local v10, output:Ljava/io/File;
    if-nez v10, :cond_2

    const/4 v13, 0x0

    .line 534
    :goto_0
    return-object v13

    .line 512
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-static/range {v13 .. v16}, Lcom/android/gallery3d/app/CropImage;->copyExif(Lcom/android/gallery3d/data/MediaItem;Ljava/lang/String;II)V

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long v8, v13, v15

    .line 515
    .local v8, now:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "title"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v14}, Lcom/android/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v13, "_display_name"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v13, "datetaken"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v14}, Lcom/android/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/android/gallery3d/data/MediaObject;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    const-string v13, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v13, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 521
    const-string v13, "mime_type"

    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getOutputMimeType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v13, "orientation"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v13, "_data"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v13, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    const-string v13, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v13, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v13}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v4

    .line 529
    .local v4, latitude:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v13}, Lcom/android/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/android/gallery3d/data/MediaObject;)D

    move-result-wide v6

    .line 530
    .local v6, longitude:D
    invoke-static {v4, v5, v6, v7}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 531
    const-string v13, "latitude"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 532
    const-string v13, "longitude"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 534
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 483
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v3}, Lcom/android/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 497
    :cond_0
    :goto_0
    return-object v2

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_3

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 487
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v3, Lcom/android/gallery3d/app/CropImage;->IS_DRM_SUPPORTED:Z

    if-eqz v3, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 489
    .local v1, path:Lcom/android/gallery3d/data/Path;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 490
    .local v0, mtkInclusion:I
    :goto_1
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "mtkInclusion"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 489
    .end local v0           #mtkInclusion:I
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/Path;->getMtkInclusion()I

    move-result v0

    goto :goto_1

    .line 497
    .end local v1           #path:Lcom/android/gallery3d/data/Path;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveGenericImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 428
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1099
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1100
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    const-string v5, "aspectX"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1103
    .local v0, aspectX:I
    const-string v5, "aspectY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1104
    .local v1, aspectY:I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1105
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 1108
    :cond_2
    const-string v5, "spotlightX"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1109
    .local v3, spotlightX:F
    const-string v5, "spotlightY"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 1110
    .local v4, spotlightY:F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_0

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_0

    .line 1111
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5, v3, v4}, Lcom/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method

.method private startLoadBitmapTask()V
    .locals 3

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$6;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$6;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 1219
    return-void
.end method

.method private stopWorkerThread()V
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mWorkerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private unregisterReceiverIfPossible()V
    .locals 3

    .prologue
    .line 1674
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CropImage;->isLocalOrMediaUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1687
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CropImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->stopWorkerThread()V

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CropImage"

    const-string v2, "trying to unregister receiver which has not been registered yet!!"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method doBindService()Z
    .locals 3

    .prologue
    .line 1590
    const-string v0, "CropImage"

    const-string v1, "doBindService()"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.stereo3dwallpaper.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/CropImage;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mIsBounded:Z

    .line 1596
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBindService:mIsBounded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mIsBounded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mIsBounded:Z

    return v0
.end method

.method doUnbindService()V
    .locals 3

    .prologue
    .line 1601
    const-string v1, "CropImage"

    const-string v2, "doUnbindService()"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsBounded:Z

    if-eqz v1, :cond_0

    .line 1604
    const-string v1, "CropImage"

    const-string v2, "doUnbindService:call unbindService()"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CropImage;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mIsBounded:Z

    .line 1615
    :cond_0
    return-void

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CropImage"

    const-string v2, "doUnbindService:got exception when unbind.."

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 330
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 207
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 210
    const v2, 0x7f040011

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->setContentView(I)V

    .line 211
    new-instance v2, Lcom/android/gallery3d/ui/CropView;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    .line 212
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-interface {v2, v5}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 215
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 218
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 219
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 220
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 223
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 224
    const v2, 0x7f0c020d

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 225
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 285
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v2, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create:mMediaItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-boolean v2, Lcom/android/gallery3d/app/CropImage;->IS_STEREO_DISPLAY_SUPPORTED:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    const/high16 v5, 0x1

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "set-as-wallpaper"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    .line 238
    const-string v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate:mSetStereoWallpaper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/CropView;->setStereoWallpaperMode(Z)V

    .line 244
    const v2, 0x7f0c01a1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 247
    :cond_2
    new-instance v2, Lcom/android/gallery3d/app/CropImage$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/CropImage$1;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 284
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->setCropParameters()V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 230
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 298
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-eqz v1, :cond_0

    .line 299
    const v1, 0x7f0b00f7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 301
    const v1, 0x7f0c01a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 304
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 324
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 311
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 315
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 320
    :sswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 309
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b001a -> :sswitch_1
        0x7f0b00f7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 1255
    const-string v5, "CropImage"

    const-string v6, "onPause"

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 1258
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 1259
    .local v2, loadTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1261
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1262
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1263
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 1267
    .local v0, loadBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1269
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1270
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1271
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1274
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadSecondBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 1275
    .local v1, loadSecondBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1277
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1278
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1281
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    .line 1282
    .local v4, saveTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1284
    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 1285
    invoke-interface {v4}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 1286
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1288
    iget-boolean v5, p0, Lcom/android/gallery3d/app/CropImage;->mSetStereoWallpaper:Z

    if-eqz v5, :cond_3

    .line 1289
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->doUnbindService()V

    .line 1296
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1297
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1301
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v3

    .line 1302
    .local v3, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1304
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/CropView;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1309
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->unregisterReceiverIfPossible()V

    .line 1310
    return-void

    .line 1306
    :catchall_0
    move-exception v5

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v5
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1223
    const-string v1, "CropImage"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 1225
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    .line 1226
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->registerReceiverIfNeeded()V

    .line 1229
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1230
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1231
    const-string v1, "CropImage"

    const-string v2, "onResume: start checking storage"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1236
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 1242
    return-void

    .line 1240
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 289
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    return-void
.end method
