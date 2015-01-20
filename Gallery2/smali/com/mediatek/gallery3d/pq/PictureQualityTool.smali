.class public Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.super Landroid/app/Activity;
.source "PictureQualityTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;,
        Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;
    }
.end annotation


# static fields
.field public static final ACTION_PQ:Ljava/lang/String; = "com.android.camera.action.PQ"

.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field private static final SUCCESS_LOAD_BITMAP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PictureQualityTool"

.field private static isEnterADVmode:Z


# instance fields
.field public PQADVMode:Landroid/view/MenuItem;

.field private PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

.field public PQSwitchmemu:Landroid/view/MenuItem;

.field private WindowsHeight:I

.field private WindowsWidth:I

.field public hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

.field lastX:I

.field lastY:I

.field public mActionBar:Landroid/app/ActionBar;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlobalSatOption:I

.field private mGlobleSatRange:I

.field private mGrassSatOption:I

.field private mGrassSatRange:I

.field private mGrassToneOption:I

.field private mGrassToneRange:I

.field private mHandler:Landroid/os/Handler;

.field private mHudOptionADV:I

.field private mHudRangeADV:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewADV:Landroid/widget/ImageView;

.field private mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

.field mMetric:Landroid/graphics/Matrix;

.field public mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

.field private mSatOptionADV:I

.field private mSatRangeADV:I

.field public mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

.field private mSeekBarGlobal:Landroid/widget/SeekBar;

.field private mSeekBarGrassSat:Landroid/widget/SeekBar;

.field private mSeekBarGrassTone:Landroid/widget/SeekBar;

.field private mSeekBarSharpness:Landroid/widget/SeekBar;

.field private mSeekBarSkinSat:Landroid/widget/SeekBar;

.field private mSeekBarSkinTone:Landroid/widget/SeekBar;

.field private mSeekBarSkySat:Landroid/widget/SeekBar;

.field private mSeekBarSkyTone:Landroid/widget/SeekBar;

.field public mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

.field private mSharpnessOption:I

.field private mSharpnessRange:I

.field private mSkinSatOption:I

.field private mSkinSatRange:I

.field private mSkinToneOption:I

.field private mSkinToneRange:I

.field private mSkySatOption:I

.field private mSkySatRange:I

.field private mSkyToneOption:I

.field private mSkyToneRange:I

.field private mTextViewGlobal:Landroid/widget/TextView;

.field private mTextViewGlobalSatRange:Landroid/widget/TextView;

.field private mTextViewGrassSat:Landroid/widget/TextView;

.field private mTextViewGrassSatRange:Landroid/widget/TextView;

.field private mTextViewGrassTone:Landroid/widget/TextView;

.field private mTextViewGrassToneMin:Landroid/widget/TextView;

.field private mTextViewGrassToneRange:Landroid/widget/TextView;

.field private mTextViewSharpness:Landroid/widget/TextView;

.field private mTextViewSharpnessRange:Landroid/widget/TextView;

.field private mTextViewSkinSat:Landroid/widget/TextView;

.field private mTextViewSkinSatRange:Landroid/widget/TextView;

.field private mTextViewSkinTone:Landroid/widget/TextView;

.field private mTextViewSkinToneMin:Landroid/widget/TextView;

.field private mTextViewSkinToneRange:Landroid/widget/TextView;

.field private mTextViewSkySat:Landroid/widget/TextView;

.field private mTextViewSkySatRange:Landroid/widget/TextView;

.field private mTextViewSkyTone:Landroid/widget/TextView;

.field private mTextViewSkyToneMin:Landroid/widget/TextView;

.field private mTextViewSkyToneRange:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field public mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

.field public mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field public options:Landroid/graphics/BitmapFactory$Options;

.field private origionGrassToneIndex:I

.field private origionGrassToneSIndex:I

.field private origionSatAdjIndex:I

.field private origionSharpnessIndex:I

.field private origionSkinToneIndex:I

.field private origionSkinToneSIndex:I

.field private origionSkyToneIndex:I

.field private origionSkyToneSIndex:I

.field public pqUri:Ljava/lang/String;

.field public saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

.field private seekBar_hue:Landroid/widget/SeekBar;

.field public seekBar_saturation:Landroid/widget/SeekBar;

.field public sign:Z

.field private textView_hue:Landroid/widget/TextView;

.field private textView_hue_left:Landroid/widget/TextView;

.field private textView_hue_left_temple:Landroid/widget/TextView;

.field private textView_hue_progress:Landroid/widget/TextView;

.field private textView_hue_progress_temple:Landroid/widget/TextView;

.field private textView_hue_temple:Landroid/widget/TextView;

.field private textView_saturation:Landroid/widget/TextView;

.field private textView_saturation_left:Landroid/widget/TextView;

.field private textView_saturation_left_temple:Landroid/widget/TextView;

.field private textView_saturation_progress:Landroid/widget/TextView;

.field private textView_saturation_progress_temple:Landroid/widget/TextView;

.field private textView_saturation_temple:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 161
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    .line 176
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    .line 180
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 203
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    .line 206
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    .line 207
    iput-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    .line 215
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    .line 842
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessOption:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobalSatOption:I

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneOption:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneOption:I

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneOption:I

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I

    return v0
.end method

.method static synthetic access$3802(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatOption:I

    return p1
.end method

.method static synthetic access$3900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I

    return v0
.end method

.method static synthetic access$4202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatOption:I

    return p1
.end method

.method static synthetic access$4300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I

    return v0
.end method

.method static synthetic access$4602(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatOption:I

    return p1
.end method

.method static synthetic access$4700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    return v0
.end method

.method static synthetic access$4800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I

    return v0
.end method

.method static synthetic access$4902(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudOptionADV:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    return v0
.end method

.method static synthetic access$5100(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I

    return v0
.end method

.method static synthetic access$5202(Lcom/mediatek/gallery3d/pq/PictureQualityTool;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatOptionADV:I

    return p1
.end method

.method static synthetic access$5300(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    return v0
.end method

.method static synthetic access$5400(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onReDisplayPQImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)Lcom/mediatek/gallery3d/pq/PictureQualityJni89;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    return-object v0
.end method

.method private addSeekBarListener()V
    .locals 2

    .prologue
    .line 648
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    .line 649
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->setLisenter(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V

    .line 650
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 651
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 652
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 654
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 655
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 656
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 657
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 659
    return-void
.end method

.method private addSeekBarListenerADVMode()V
    .locals 7

    .prologue
    .line 626
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGestureDetector:Landroid/view/GestureDetector;

    .line 627
    new-instance v0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;-><init>(IILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    .line 629
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 630
    new-instance v0, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;-><init>(IILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    .line 632
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 633
    new-instance v6, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;

    invoke-direct {v6, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    .line 635
    .local v6, mSeekBarTouchVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarTouchVisibleLisenter;
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->hueSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->setLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;Landroid/widget/SeekBar;)V

    .line 636
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->saturationSeekBarTouchBase:Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6, v1}, Lcom/mediatek/gallery3d/pq/SeekBarTouchBase;->setLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;Landroid/widget/SeekBar;)V

    .line 638
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListenerADVmode()V

    .line 639
    return-void
.end method

.method private addSeekBarListenerADVmode()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 644
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 645
    return-void
.end method

.method private enterADVmode()V
    .locals 1

    .prologue
    .line 355
    const v0, 0x7f04003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 356
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolViewADVMode()V

    .line 357
    return-void
.end method

.method private enterBasemode()V
    .locals 1

    .prologue
    .line 350
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 351
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolView()V

    .line 352
    return-void
.end method

.method private getOriginIndex()V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    .line 570
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    .line 571
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    .line 572
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    .line 573
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    .line 574
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    .line 575
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    .line 576
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneSIndex()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    .line 577
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSharpnessIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkyToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionGrassToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkinToneIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSatAdjIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkinToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionGrassToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origionSkyToneSIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method private getViewById()V
    .locals 1

    .prologue
    .line 375
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneMin:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneMin:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneMin:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageView:Landroid/widget/ImageView;

    .line 380
    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpnessRange:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobalSatRange:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneRange:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneRange:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSatRange:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySatRange:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    .line 392
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    .line 395
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    .line 399
    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    .line 403
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    .line 404
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    .line 407
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    .line 408
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    .line 410
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    .line 411
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    .line 413
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    .line 416
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    .line 417
    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    .line 418
    return-void
.end method

.method private getViewByIdADVMode()V
    .locals 11

    .prologue
    const v2, 0x7f040042

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v10, 0x8

    .line 421
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    .line 422
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 423
    .local v7, lay:Landroid/view/LayoutInflater;
    invoke-virtual {v7, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 424
    .local v9, v:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 425
    .local v8, mRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040043

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v0, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mbitmapRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    .line 429
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewADV:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    .line 432
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    .line 436
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    .line 437
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    .line 438
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 442
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 443
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 445
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_left_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 446
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 447
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 449
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    .line 450
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    .line 452
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    .line 454
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    .line 455
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    .line 456
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    .line 458
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 459
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 460
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 463
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_left_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v10}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setVisibilityADM(Landroid/view/View;I)V

    .line 466
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    .line 467
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mVisibleLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$VisibleLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setVisibleLisenter(Lcom/mediatek/gallery3d/pq/SetViewVisible;)V

    .line 468
    new-instance v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    .line 469
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mImageViewTouchBase:Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSettingXYAxisLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SettingXYAxisLisenter;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/pq/ImageViewTouchBase;->setXYAxisLisenter(Lcom/mediatek/gallery3d/pq/SetXYAxisIndex;)V

    .line 470
    return-void
.end method

.method private initPQToolView()V
    .locals 2

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getViewById()V

    .line 361
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 362
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setRangeAndIndex()V

    .line 364
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListener()V

    .line 366
    return-void
.end method

.method private initPQToolViewADVMode()V
    .locals 2

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getViewByIdADVMode()V

    .line 480
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->setRangeAndIndexADVMode()V

    .line 482
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListenerADVMode()V

    .line 484
    return-void
.end method

.method private onReDisplayPQImage()V
    .locals 6

    .prologue
    .line 589
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->pqUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    .line 590
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 591
    const-string v3, "PictureQualityTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBitmap.width=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBitmap.height=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " option.insamplesize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 606
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 607
    .local v1, mMessage:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 608
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 609
    return-void

    .line 593
    .end local v1           #mMessage:Landroid/os/Message;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "PictureQualityTool"

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 598
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 599
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "PictureQualityTool"

    const-string v4, "bitmapfactory decodestream fail"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 601
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 602
    .local v2, w:Ljava/lang/OutOfMemoryError;
    const-string v3, "PictureQualityTool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmapfactory decodestream fail  out Of memory!!!!!!!!option.insampleSize=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 4

    .prologue
    .line 612
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 613
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "global"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    const-string v2, "sharpness"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const-string v2, "skyTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    const-string v2, "skinTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHRange()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v2, "grassTone"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHRange()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const-string v2, "skinSat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    const-string v2, "grassSat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 621
    const-string v2, "skySat"

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneSIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 623
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 624
    return-void
.end method

.method private recoverIndex()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSharpnessIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSharpAdjIndex(I)Z

    .line 340
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSatAdjIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSatAdjIndex(I)Z

    .line 341
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkinToneHIndex(I)Z

    .line 342
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetGrassToneHIndex(I)Z

    .line 343
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkyToneHIndex(I)Z

    .line 344
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkinToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkinToneSIndex(I)Z

    .line 345
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionGrassToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetGrassToneSIndex(I)Z

    .line 346
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    iget v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->origionSkyToneSIndex:I

    invoke-static {v0}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeSetSkyToneSIndex(I)Z

    .line 347
    return-void
.end method

.method private setRangeAndIndex()V
    .locals 4

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->getOriginIndex()V

    .line 505
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    .line 506
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    .line 508
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    .line 509
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    .line 510
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    .line 511
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkinToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGrassToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkyToneRange=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    .line 516
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    .line 517
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneSRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    .line 519
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneMin:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpnessRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobalSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassToneRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySatRange:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSharpness:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sharpness:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSharpness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSharpAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 536
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PQJni89.nativeGetSkyToneHIndex()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PQJni89.nativeGetSkyToneHIndex()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkyTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkyTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 542
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 546
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinTone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Hue):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHIndex()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinTone:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneHIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinToneRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 549
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGlobal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Sat.:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGlobal:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 551
    const-string v0, "PictureQualityTool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkyToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SkinToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkyToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GrassToneRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassToneRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mColorRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGlobleSatRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSharpnessRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSharpnessRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkinSat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skin tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkinSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkinToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkinSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 559
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewGrassSat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grass tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarGrassSat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetGrassToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mGrassSatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mTextViewSkySat:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sky tone(Sat):  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneSIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarSkySat:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSkyToneSIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSkySatRange:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 566
    return-void
.end method

.method private setRangeAndIndexADVMode()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetHueAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    .line 487
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjRange()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    .line 489
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetHueAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_hue:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetHueAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 493
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->seekBar_saturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 497
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_temple:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mHudRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_hue_progress_temple:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hue:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetHueAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_temple:Landroid/widget/TextView;

    iget v1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSatRangeADV:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->textView_saturation_progress_temple:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sat:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQJni89:Lcom/mediatek/gallery3d/pq/PictureQualityJni89;

    invoke-static {}, Lcom/mediatek/gallery3d/pq/PictureQualityJni89;->nativeGetSatAdjIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->recoverIndex()V

    .line 840
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 841
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f04003c

    const/4 v5, 0x1

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 239
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 240
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 242
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    .line 243
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    .line 244
    const-string v2, "PictureQualityTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowsWidth=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WindowsHeight=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mView:Landroid/view/View;

    .line 246
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "PQUri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->pqUri:Ljava/lang/String;

    .line 249
    new-instance v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-direct {v2, p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    .line 250
    new-instance v2, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mSeekBarChangeLisenter:Lcom/mediatek/gallery3d/pq/PictureQualityTool$SeekBarChangeLisenter;

    invoke-direct {v2, v3}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;-><init>(Lcom/mediatek/gallery3d/pq/SeekBarChangeInterface;)V

    iput-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    .line 251
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mOnSeekBarChangelisenter:Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;

    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/pq/OnSeekBarChangelisenter;->setDecodeImage(Ljava/lang/Runnable;)V

    .line 252
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mDecodeImage:Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;

    invoke-virtual {v2, v5}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$DecodeImage;->setNeedDecodeBound(Z)V

    .line 253
    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 255
    invoke-static {}, Lcom/mediatek/gallery3d/util/MediatekFeature;->isPictureQualityEnhanceSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->options:Landroid/graphics/BitmapFactory$Options;

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 259
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->initPQToolView()V

    .line 260
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->addSeekBarListener()V

    .line 261
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 278
    const v0, 0x7f0b0110

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    .line 279
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    sget-boolean v0, Lcom/mediatek/gallery3d/util/MtkLog;->SUPPORT_PQ_ADV:Z

    if-nez v0, :cond_0

    .line 281
    const v0, 0x7f0b0111

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQADVMode:Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQADVMode:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 284
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 270
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 271
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/high16 v8, 0x4000

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 335
    :goto_0
    return v7

    .line 291
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 294
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->recoverIndex()V

    .line 295
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onSaveClicked()V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 299
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->onSaveClicked()V

    .line 300
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 303
    :sswitch_3
    sget-boolean v3, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    if-eqz v3, :cond_0

    .line 304
    sput-boolean v4, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 305
    const-string v3, "Base"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 306
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->enterBasemode()V

    .line 307
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 309
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->PQSwitchmemu:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 312
    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 313
    .local v2, scaleW:F
    iget v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 314
    .local v1, scaleH:F
    sub-float v3, v2, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v0, v1

    .line 315
    .local v0, scale:F
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 316
    iget-object v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mMetric:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v5, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->WindowsHeight:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 317
    sput-boolean v7, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 318
    const-string v3, "ADV"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 319
    invoke-direct {p0}, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->enterADVmode()V

    goto/16 :goto_0

    .end local v0           #scale:F
    :cond_1
    move v0, v2

    .line 314
    goto :goto_1

    .line 324
    .end local v1           #scaleH:F
    .end local v2           #scaleW:F
    :sswitch_4
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    if-nez v3, :cond_2

    .line 325
    const-string v3, "PQ off"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 326
    iput-boolean v7, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    goto/16 :goto_0

    .line 328
    :cond_2
    const-string v3, "PQ on"

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 329
    iput-boolean v4, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->sign:Z

    goto/16 :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b001a -> :sswitch_1
        0x7f0b00f7 -> :sswitch_2
        0x7f0b0110 -> :sswitch_4
        0x7f0b0111 -> :sswitch_3
    .end sparse-switch

    .line 310
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/pq/PictureQualityTool;->isEnterADVmode:Z

    .line 266
    return-void
.end method

.method public setTextViewPositionAsSeekBar(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .parameter "parent"
    .parameter "leftOfParent"
    .parameter "rightOfParent"
    .parameter "bottomAndcenterOfParent"

    .prologue
    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 776
    .local v1, left:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 777
    .local v6, top:I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 778
    .local v5, right:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 779
    .local v0, bottom:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 780
    .local v7, width:I
    const-string v8, "PictureQualityTool"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "left=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " right=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9, v1, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 783
    .local v3, paramsLeft:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 786
    .local v4, paramsRight:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v1

    invoke-direct {v2, v8, v9, v10, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 789
    .local v2, paramsCenter:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    return-void
.end method

.method public setVisibilityADM(Landroid/view/View;I)V
    .locals 0
    .parameter "mView"
    .parameter "isVisible"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_0
    return-void
.end method
