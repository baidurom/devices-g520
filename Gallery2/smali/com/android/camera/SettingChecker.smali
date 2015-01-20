.class public Lcom/android/camera/SettingChecker;
.super Ljava/lang/Object;
.source "SettingChecker.java"


# static fields
.field public static final CAMERA_BACK_ID:I = 0x0

.field public static final CAMERA_COUNT:I = 0x2

.field public static final CAMERA_FRONT_ID:I = 0x1

.field private static final CAPABILITIES:[Lcom/android/camera/Restriction; = null

.field private static final COLUM_SCENE_MODE_AUTO:I = 0xe

.field private static final COLUM_SCENE_MODE_BEACH:I = 0x6

.field private static final COLUM_SCENE_MODE_CANDLELIGHT:I = 0xd

.field private static final COLUM_SCENE_MODE_FIREWORKS:I = 0xa

.field private static final COLUM_SCENE_MODE_LANDSCAPE:I = 0x2

.field private static final COLUM_SCENE_MODE_NIGHT:I = 0x3

.field private static final COLUM_SCENE_MODE_NIGHT_PORTRAIT:I = 0x4

.field private static final COLUM_SCENE_MODE_NORMAL:I = 0x0

.field private static final COLUM_SCENE_MODE_PARTY:I = 0xc

.field private static final COLUM_SCENE_MODE_PORTRAIT:I = 0x1

.field private static final COLUM_SCENE_MODE_SNOW:I = 0x7

.field private static final COLUM_SCENE_MODE_SPORT:I = 0xb

.field private static final COLUM_SCENE_MODE_STEADYPHOTO:I = 0x9

.field private static final COLUM_SCENE_MODE_SUNSET:I = 0x8

.field private static final COLUM_SCENE_MODE_THEATRE:I = 0x5

.field private static final DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String; = null

.field private static final DEFAULT_VALUE_FOR_SETTING_ID:[I = null

.field private static final KEYS_FOR_SCENE:[Ljava/lang/String; = null

.field public static final KEYS_FOR_SETTING:[Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String; = null

.field private static final MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I = null

.field private static final MATRIX_MODE_STATE:[[I = null

.field private static final MATRIX_SCENE_STATE:[[I = null

.field private static final MATRIX_SETTING_VISIBLE:[[Z = null

.field private static final MATRIX_ZOOM_ENABLE:[Z = null

.field private static final MATRIX_ZOOM_SMOOTH:[Z = null

.field private static final RESET_SETTING_ITEMS:[I = null

.field private static final RESET_STATE_VALUE:[[Ljava/lang/String; = null

.field private static final RESTRICTIOINS:[Lcom/android/camera/Restriction; = null

.field public static final ROW_SETTING_ANTI_FLICKER:I = 0xe

.field public static final ROW_SETTING_AUDIO_MODE:I = 0x11

.field public static final ROW_SETTING_BRIGHTNESS:I = 0x21

.field public static final ROW_SETTING_CAMERA_MODE:I = 0x28

.field public static final ROW_SETTING_CAPTURE_MODE:I = 0x29

.field public static final ROW_SETTING_COLOR_EFFECT:I = 0x6

.field public static final ROW_SETTING_CONTINUOUS:I = 0x9

.field public static final ROW_SETTING_CONTINUOUS_NUM:I = 0x2a

.field public static final ROW_SETTING_CONTRAST:I = 0x22

.field public static final ROW_SETTING_DUAL_CAMERA:I = 0x1

.field public static final ROW_SETTING_EXPOSURE:I = 0x2

.field public static final ROW_SETTING_FLASH:I = 0x0

.field public static final ROW_SETTING_GEO_TAG:I = 0xa

.field public static final ROW_SETTING_HUE:I = 0x1f

.field public static final ROW_SETTING_IMAGE_PROPERTIES:I = 0x5

.field public static final ROW_SETTING_ISO:I = 0xc

.field public static final ROW_SETTING_JPEG_QUALITY:I = 0x2c

.field public static final ROW_SETTING_LIVE_EFFECT:I = 0x13

.field public static final ROW_SETTING_MICROPHONE:I = 0x10

.field public static final ROW_SETTING_PICTURE_SIZE:I = 0xb

.field public static final ROW_SETTING_RECORDING_HINT:I = 0x2b

.field public static final ROW_SETTING_SATURATION:I = 0x20

.field public static final ROW_SETTING_SCENCE_MODE:I = 0x3

.field public static final ROW_SETTING_SELF_TIMER:I = 0x7

.field public static final ROW_SETTING_SHARPNESS:I = 0x1e

.field public static final ROW_SETTING_STEREO_MODE:I = 0x2d

.field public static final ROW_SETTING_TIME_LAPSE:I = 0x12

.field public static final ROW_SETTING_VIDEO_QUALITY:I = 0x14

.field public static final ROW_SETTING_VIDEO_STABLE:I = 0xf

.field public static final ROW_SETTING_WHITE_BALANCE:I = 0x4

.field public static final ROW_SETTING_ZSD:I = 0x8

.field public static final SETTING_GROUP_ALL_IN_SCREEN:[I = null

.field public static final SETTING_GROUP_ALL_IN_SETTING:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_TAB:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_UI:[I = null

.field public static final SETTING_GROUP_COMMON_FOR_TAB:[I = null

.field public static final SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I = null

.field public static final SETTING_GROUP_IMAGE_FOR_TAB:[I = null

.field public static final SETTING_GROUP_NOT_IN_PREFERENCE:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_TAB:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_UI:[I = null

.field public static final SETTING_ROW_COUNT:I = 0x2e

.field private static final STATE_D0:I = 0x64

.field private static final STATE_E0:I = 0xc8

.field private static final STATE_OFFSET:I = 0x64

.field private static final STATE_R0:I = 0x12c

.field private static final STATE_R1:I = 0x12d

.field private static final STATE_R2:I = 0x12e

.field private static final STATE_R3:I = 0x12f

.field private static final STATE_R4:I = 0x130

.field private static final STATE_R5:I = 0x131

.field private static final STATE_R6:I = 0x132

.field private static final STATE_R7:I = 0x133

.field private static final TAG:Ljava/lang/String; = "SettingChecker"

.field public static final UNKNOWN:I = -0x1

.field public static mMode:I


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mLastFlashMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 24
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/SettingChecker;->LOG:Z

    .line 115
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/SettingChecker;->mMode:I

    .line 117
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    .line 136
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB:[I

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    .line 173
    new-array v0, v10, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I

    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_IMAGE_FOR_TAB:[I

    .line 202
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    .line 244
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I

    .line 284
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    .line 308
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    .line 366
    new-array v0, v11, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SCREEN:[I

    .line 400
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SETTING:[I

    .line 432
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    .line 441
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action"

    aput-object v1, v0, v8

    const-string v1, "portrait"

    aput-object v1, v0, v7

    const-string v1, "landscape"

    aput-object v1, v0, v10

    const-string v1, "night"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "night-portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "theatre"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "beach"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "snow"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sunset"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "steadyphoto"

    aput-object v2, v0, v1

    const-string v1, "fireworks"

    aput-object v1, v0, v9

    const/16 v1, 0xb

    const-string v2, "sports"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "party"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "candlelight"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "normal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    .line 460
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/Restriction;

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "800"

    aput-object v3, v2, v8

    const-string v3, "1600"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "1280x960"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "fine"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "normal"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1000"

    aput-object v3, v2, v8

    const-string v3, "1500"

    aput-object v3, v2, v7

    const-string v3, "2000"

    aput-object v3, v2, v10

    const-string v3, "2500"

    aput-object v3, v2, v11

    const/4 v3, 0x4

    const-string v4, "3000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "5000"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "10000"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "off"

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/Restriction;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lcom/android/camera/Restriction;-><init>(I)V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1000"

    aput-object v4, v3, v8

    const-string v4, "1500"

    aput-object v4, v3, v7

    const-string v4, "2000"

    aput-object v4, v3, v10

    const-string v4, "2500"

    aput-object v4, v3, v11

    const/4 v4, 0x4

    const-string v5, "3000"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "5000"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "10000"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v7, [Lcom/android/camera/Restriction;

    new-instance v4, Lcom/android/camera/Restriction;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "normal"

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    .line 492
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/Restriction;

    new-instance v1, Lcom/android/camera/Restriction;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v11}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v8

    const-string v5, "portrait"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/camera/Restriction;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v11}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v8

    const-string v5, "night"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/Restriction;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v8}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "on"

    aput-object v5, v4, v8

    const-string v5, "auto"

    aput-object v5, v4, v7

    const-string v5, "off"

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/camera/Restriction;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v7, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v8}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "off"

    aput-object v5, v4, v8

    const-string v5, "torch"

    aput-object v5, v4, v7

    const-string v5, "off"

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "off"

    aput-object v5, v4, v8

    const-string v5, "on"

    aput-object v5, v4, v7

    const-string v5, "auto"

    aput-object v5, v4, v10

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setMappingValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    .line 528
    const/16 v0, 0x2e

    new-array v0, v0, [[I

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    .line 529
    const/16 v0, 0x2e

    new-array v0, v0, [[I

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    .line 530
    const/16 v0, 0x2e

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    .line 531
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    .line 532
    new-array v0, v10, [[Z

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    .line 533
    const/16 v0, 0x2e

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    .line 534
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    .line 535
    new-array v0, v9, [Z

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_ENABLE:[Z

    .line 547
    new-array v0, v9, [Z

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_SMOOTH:[Z

    .line 560
    new-array v0, v9, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I

    .line 573
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "continuous-picture"

    aput-object v1, v0, v8

    const-string v1, "continuous-picture"

    aput-object v1, v0, v7

    const-string v1, "continuous-picture"

    aput-object v1, v0, v10

    const-string v1, "continuous-picture"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "continuous-video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String;

    .line 588
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v9, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v8

    .line 589
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v9, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v7

    .line 590
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v9, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v10

    .line 591
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v9, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v11

    .line 592
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x4

    new-array v2, v9, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    .line 594
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x6

    new-array v2, v9, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    .line 596
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x7

    new-array v2, v9, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    .line 598
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x8

    new-array v2, v9, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    .line 599
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x9

    new-array v2, v9, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    .line 600
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v9, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v9

    .line 601
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xb

    new-array v2, v9, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    .line 602
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xc

    new-array v2, v9, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    .line 604
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xe

    new-array v2, v9, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    .line 605
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xf

    new-array v2, v9, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    .line 606
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x10

    new-array v2, v9, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    .line 607
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x11

    new-array v2, v9, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    .line 608
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x12

    new-array v2, v9, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    .line 609
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x13

    new-array v2, v9, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    .line 610
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x14

    new-array v2, v9, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    .line 612
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x1e

    new-array v2, v9, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    .line 613
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x1f

    new-array v2, v9, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    .line 614
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x20

    new-array v2, v9, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    .line 615
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x21

    new-array v2, v9, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    .line 616
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x22

    new-array v2, v9, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    .line 618
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x28

    new-array v2, v9, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    .line 620
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x29

    new-array v2, v9, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    .line 622
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2a

    new-array v2, v9, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    .line 623
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2b

    new-array v2, v9, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    .line 624
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2c

    new-array v2, v9, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    .line 626
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_2f

    aput-object v1, v0, v10

    .line 627
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/4 v1, 0x4

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    .line 629
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0xc

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    .line 632
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x1e

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    .line 633
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x1f

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    .line 634
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x20

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    .line 635
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x21

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    .line 636
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x22

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    .line 638
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "off"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    .line 639
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    .line 640
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v8

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v10

    .line 641
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "auto"

    aput-object v2, v1, v8

    aput-object v1, v0, v11

    .line 642
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v2, v8

    const-string v3, "daylight"

    aput-object v3, v2, v7

    const-string v3, "incandescent"

    aput-object v3, v2, v10

    aput-object v2, v0, v1

    .line 648
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "none"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 649
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 650
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 651
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 652
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v9

    .line 653
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 654
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 656
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 657
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 658
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "on"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 659
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x11

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "normal"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 660
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x12

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 661
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x13

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 662
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x14

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "high"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 664
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x1e

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "low"

    aput-object v3, v2, v7

    const-string v3, "high"

    aput-object v3, v2, v10

    aput-object v2, v0, v1

    .line 669
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x1f

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 670
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x20

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v8

    const-string v3, "low"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 674
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x21

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 675
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 677
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2b

    new-array v2, v10, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 679
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x29

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "normal"

    aput-object v3, v2, v8

    const-string v3, "hdr"

    aput-object v3, v2, v7

    const-string v3, "face_beauty"

    aput-object v3, v2, v10

    const-string v3, "asd"

    aput-object v3, v2, v11

    const/4 v3, 0x4

    const-string v4, "smileshot"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bestshot"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "evbracketshot"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "autorama"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    .line 690
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2a

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    .line 691
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2c

    new-array v2, v10, [Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 695
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x28

    new-array v2, v10, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 700
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_flashmode_key"

    aput-object v1, v0, v8

    .line 701
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_id_key"

    aput-object v1, v0, v7

    .line 702
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_exposure_key"

    aput-object v1, v0, v10

    .line 703
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v11

    .line 704
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    .line 705
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "pref_camera_image_properties_key"

    aput-object v2, v0, v1

    .line 706
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "pref_camera_coloreffect_key"

    aput-object v2, v0, v1

    .line 707
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "pref_camera_self_timer_key"

    aput-object v2, v0, v1

    .line 708
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "pref_camera_zsd_key"

    aput-object v2, v0, v1

    .line 709
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "pref_camera_shot_number"

    aput-object v2, v0, v1

    .line 710
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_recordlocation_key"

    aput-object v1, v0, v9

    .line 711
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    .line 712
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "pref_camera_iso_key"

    aput-object v2, v0, v1

    .line 714
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    .line 715
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "pref_video_eis_key"

    aput-object v2, v0, v1

    .line 716
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "pref_camera_recordaudio_key"

    aput-object v2, v0, v1

    .line 717
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "pref_camera_video_hd_recording_key"

    aput-object v2, v0, v1

    .line 718
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    aput-object v2, v0, v1

    .line 719
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "pref_video_effect_key"

    aput-object v2, v0, v1

    .line 720
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "pref_video_quality_key"

    aput-object v2, v0, v1

    .line 721
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x2d

    const-string v2, "pref_stereo3d_mode_key"

    aput-object v2, v0, v1

    .line 723
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "pref_camera_edge_key"

    aput-object v2, v0, v1

    .line 724
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "pref_camera_hue_key"

    aput-object v2, v0, v1

    .line 725
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "pref_camera_saturation_key"

    aput-object v2, v0, v1

    .line 726
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "pref_camera_brightness_key"

    aput-object v2, v0, v1

    .line 727
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "pref_camera_contrast_key"

    aput-object v2, v0, v1

    .line 729
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    const/16 v1, 0x2e

    new-array v1, v1, [Z

    aput-object v1, v0, v8

    .line 730
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    aput-boolean v7, v0, v8

    .line 731
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    aput-boolean v7, v0, v7

    .line 732
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    aput-boolean v7, v0, v10

    .line 733
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    aput-boolean v7, v0, v11

    .line 734
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/4 v1, 0x4

    aput-boolean v7, v0, v1

    .line 735
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/4 v1, 0x5

    aput-boolean v7, v0, v1

    .line 736
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/4 v1, 0x6

    aput-boolean v7, v0, v1

    .line 737
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/4 v1, 0x7

    aput-boolean v7, v0, v1

    .line 738
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x8

    aput-boolean v7, v0, v1

    .line 739
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x9

    aput-boolean v7, v0, v1

    .line 740
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    aput-boolean v7, v0, v9

    .line 741
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0xb

    aput-boolean v7, v0, v1

    .line 742
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0xc

    aput-boolean v7, v0, v1

    .line 744
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0xe

    aput-boolean v7, v0, v1

    .line 745
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0xf

    aput-boolean v7, v0, v1

    .line 746
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x10

    aput-boolean v7, v0, v1

    .line 747
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x11

    aput-boolean v7, v0, v1

    .line 748
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x12

    aput-boolean v7, v0, v1

    .line 749
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x13

    aput-boolean v7, v0, v1

    .line 750
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x14

    aput-boolean v7, v0, v1

    .line 751
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x2d

    aput-boolean v7, v0, v1

    .line 753
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x1e

    aput-boolean v7, v0, v1

    .line 754
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x1f

    aput-boolean v7, v0, v1

    .line 755
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x20

    aput-boolean v7, v0, v1

    .line 756
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x21

    aput-boolean v7, v0, v1

    .line 757
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v8

    const/16 v1, 0x22

    aput-boolean v7, v0, v1

    .line 759
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    const/16 v1, 0x2e

    new-array v1, v1, [Z

    aput-object v1, v0, v7

    .line 760
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v7, v0, v8

    .line 761
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v7, v0, v7

    .line 762
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v7, v0, v10

    .line 763
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v7, v0, v11

    .line 764
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x4

    aput-boolean v7, v0, v1

    .line 765
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x5

    aput-boolean v7, v0, v1

    .line 766
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x6

    aput-boolean v7, v0, v1

    .line 767
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x7

    aput-boolean v7, v0, v1

    .line 768
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x8

    aput-boolean v8, v0, v1

    .line 769
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x9

    aput-boolean v8, v0, v1

    .line 770
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v7, v0, v9

    .line 771
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xb

    aput-boolean v7, v0, v1

    .line 772
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xc

    aput-boolean v8, v0, v1

    .line 774
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xe

    aput-boolean v7, v0, v1

    .line 775
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xf

    aput-boolean v8, v0, v1

    .line 776
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x10

    aput-boolean v7, v0, v1

    .line 777
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x11

    aput-boolean v7, v0, v1

    .line 778
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x12

    aput-boolean v7, v0, v1

    .line 779
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x13

    aput-boolean v7, v0, v1

    .line 780
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x14

    aput-boolean v7, v0, v1

    .line 781
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x2d

    aput-boolean v8, v0, v1

    .line 783
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x1e

    aput-boolean v7, v0, v1

    .line 784
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x1f

    aput-boolean v7, v0, v1

    .line 785
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x20

    aput-boolean v7, v0, v1

    .line 786
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x21

    aput-boolean v7, v0, v1

    .line 787
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x22

    aput-boolean v7, v0, v1

    .line 789
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c0104

    aput v1, v0, v8

    .line 790
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c00e1

    aput v1, v0, v7

    .line 791
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c004e

    aput v1, v0, v10

    .line 792
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c0112

    aput v1, v0, v11

    .line 793
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x4

    const v2, 0x7f0c010b

    aput v2, v0, v1

    .line 795
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x6

    const v2, 0x7f0c003c

    aput v2, v0, v1

    .line 796
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x7

    const v2, 0x7f0c0050

    aput v2, v0, v1

    .line 797
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x8

    const v2, 0x7f0c0085

    aput v2, v0, v1

    .line 798
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x9

    const v2, 0x7f0c0089

    aput v2, v0, v1

    .line 799
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c00e5

    aput v1, v0, v9

    .line 800
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xb

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 801
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xc

    const v2, 0x7f0c001c

    aput v2, v0, v1

    .line 803
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xe

    const v2, 0x7f0c0057

    aput v2, v0, v1

    .line 804
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xf

    const v2, 0x7f0c0068

    aput v2, v0, v1

    .line 805
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x10

    const v2, 0x7f0c006b

    aput v2, v0, v1

    .line 806
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x11

    const v2, 0x7f0c007d

    aput v2, v0, v1

    .line 807
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x12

    const v2, 0x7f0c00ee

    aput v2, v0, v1

    .line 808
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x13

    const v2, 0x7f0c0132

    aput v2, v0, v1

    .line 809
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x14

    const v2, 0x7f0c00e9

    aput v2, v0, v1

    .line 810
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x2d

    const v2, 0x7f0c009f

    aput v2, v0, v1

    .line 812
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x1e

    const v2, 0x7f0c002f

    aput v2, v0, v1

    .line 813
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x1f

    const v2, 0x7f0c0031

    aput v2, v0, v1

    .line 814
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x20

    const v2, 0x7f0c0033

    aput v2, v0, v1

    .line 815
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x21

    const v2, 0x7f0c0035

    aput v2, v0, v1

    .line 816
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x22

    const v2, 0x7f0c0037

    aput v2, v0, v1

    .line 817
    return-void

    .line 117
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 136
    :array_1
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 155
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 163
    :array_3
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 173
    :array_4
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 178
    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 185
    :array_6
    .array-data 0x4
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 194
    :array_7
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 202
    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 244
    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 284
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 308
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 366
    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 400
    :array_d
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 432
    :array_e
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 535
    :array_f
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 547
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 560
    nop

    :array_11
    .array-data 0x4
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x20t 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
    .end array-data

    .line 588
    :array_12
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 589
    :array_13
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 590
    :array_14
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 591
    :array_15
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 592
    :array_16
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 594
    :array_17
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 596
    :array_18
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 598
    :array_19
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 599
    :array_1a
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 600
    :array_1b
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 601
    :array_1c
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 602
    :array_1d
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 604
    :array_1e
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 605
    :array_1f
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 606
    :array_20
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 607
    :array_21
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 608
    :array_22
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 609
    :array_23
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 610
    :array_24
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 612
    :array_25
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 613
    :array_26
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 614
    :array_27
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 615
    :array_28
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 616
    :array_29
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 618
    :array_2a
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 620
    :array_2b
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ft 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 622
    :array_2c
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 623
    :array_2d
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 624
    :array_2e
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 626
    :array_2f
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 627
    :array_30
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 629
    :array_31
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 632
    :array_32
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 633
    :array_33
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 634
    :array_34
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 635
    :array_35
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 636
    :array_36
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput-object p1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    .line 1767
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SettingChecker;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method private static applyModeTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 1070
    sget-object v3, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V

    .line 1071
    return-void
.end method

.method private static applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V
    .locals 5
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 1113
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1114
    aget v3, p3, v0

    .line 1115
    .local v3, row:I
    sget-object v4, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v4, v3}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1116
    invoke-static {p0, p1, v3}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, preferenceValue:Ljava/lang/String;
    invoke-static {p0, p2, p4, v3, v2}, Lcom/android/camera/SettingChecker;->applyValueToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 1113
    .end local v2           #preferenceValue:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    .end local v3           #row:I
    :cond_1
    return-void
.end method

.method private static applyRestrictionsToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;[I)V
    .locals 12
    .parameter "context"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1083
    const/4 v3, 0x0

    .local v3, i:I
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    array-length v5, v10

    .local v5, len:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 1084
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    aget-object v0, v10, v3

    .line 1085
    .local v0, curRestriction:Lcom/android/camera/Restriction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v10

    invoke-static {p2, v10}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1083
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v1

    .line 1090
    .local v1, curRow:I
    invoke-static {p1, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, curValue:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v7

    .line 1092
    .local v7, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1093
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Restriction;

    .line 1094
    .local v8, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v6

    .line 1095
    .local v6, limitedRow:I
    invoke-static {p2, v6}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1099
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1100
    .local v9, value:Ljava/lang/String;
    invoke-static {p1, v6, v9}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1101
    invoke-static {p0, p1, v6, v9}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    goto :goto_1

    .line 1106
    .end local v0           #curRestriction:Lcom/android/camera/Restriction;
    .end local v1           #curRow:I
    .end local v2           #curValue:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #limitedRow:I
    .end local v7           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #restriction:Lcom/android/camera/Restriction;
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static applySceneTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1076
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1077
    .local v4, sceneMode:I
    sget-object v3, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V

    .line 1078
    return-void
.end method

.method private static applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V
    .locals 10
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "matrix"
    .parameter "column"
    .parameter "appliedGroup"

    .prologue
    .line 1012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v2, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    array-length v3, p5

    .local v3, len:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1014
    aget v4, p5, v0

    .line 1015
    .local v4, row:I
    aget-object v5, p3, v4

    .line 1017
    .local v5, settings:[I
    if-nez v5, :cond_1

    .line 1013
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    :cond_1
    sget-object v8, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v1, v8, v4

    .line 1021
    .local v1, key:Ljava/lang/String;
    aget v6, v5, p4

    .line 1022
    .local v6, state:I
    const/4 v7, 0x0

    .line 1023
    .local v7, value:Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 1059
    :goto_2
    :sswitch_0
    if-eqz v7, :cond_0

    .line 1060
    invoke-static {p2, v4, v7}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1061
    invoke-static {p0, p2, v4, v7}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    goto :goto_1

    .line 1031
    :sswitch_1
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x0

    aget-object v7, v8, v9

    .line 1032
    goto :goto_2

    .line 1034
    :sswitch_2
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x1

    aget-object v7, v8, v9

    .line 1035
    goto :goto_2

    .line 1037
    :sswitch_3
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x2

    aget-object v7, v8, v9

    .line 1038
    goto :goto_2

    .line 1040
    :sswitch_4
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x3

    aget-object v7, v8, v9

    .line 1041
    goto :goto_2

    .line 1043
    :sswitch_5
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x4

    aget-object v7, v8, v9

    .line 1044
    goto :goto_2

    .line 1047
    :sswitch_6
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x5

    aget-object v7, v8, v9

    .line 1048
    goto :goto_2

    .line 1050
    :sswitch_7
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x6

    aget-object v7, v8, v9

    .line 1051
    goto :goto_2

    .line 1053
    :sswitch_8
    sget-object v8, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v8, v8, v4

    const/4 v9, 0x7

    aget-object v7, v8, v9

    .line 1054
    goto :goto_2

    .line 1065
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #row:I
    .end local v5           #settings:[I
    .end local v6           #state:I
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    return-void

    .line 1023
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
        0x12f -> :sswitch_4
        0x130 -> :sswitch_5
        0x131 -> :sswitch_6
        0x132 -> :sswitch_7
        0x133 -> :sswitch_8
    .end sparse-switch
.end method

.method private static applyValueToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "context"
    .parameter "parameters"
    .parameter "mode"
    .parameter "row"
    .parameter "value"

    .prologue
    .line 1125
    invoke-static {p1, p3, p4}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-static {p2, p3, p4}, Lcom/android/camera/SettingChecker;->getCapabilitySupportedValue(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1127
    invoke-static {p0, p1, p3, p4}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1128
    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 1129
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->fetchParametersFromServer()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 1132
    :cond_0
    return-object p1
.end method

.method private clearOverrideSettings([I)V
    .locals 7
    .parameter "appliedGroup"

    .prologue
    .line 1882
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 1883
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, p1

    .local v4, size:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1884
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget v6, p1, v1

    aget-object v2, v5, v6

    .line 1885
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1886
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 1887
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;)V

    .line 1883
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method private static computeDesiredPreviewSize(Landroid/app/Activity;Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;Z)Landroid/hardware/Camera$Size;
    .locals 14
    .parameter "context"
    .parameter "profile"
    .parameter "parameters"
    .parameter "usedefault"

    .prologue
    .line 1513
    const/4 v6, -0x1

    .line 1514
    .local v6, previewWidth:I
    const/4 v5, -0x1

    .line 1515
    .local v5, previewHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz p3, :cond_2

    .line 1516
    :cond_0
    iget v6, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1517
    iget v5, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1540
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1541
    .local v1, desired:Landroid/hardware/Camera$Size;
    iput v6, v1, Landroid/hardware/Camera$Size;->width:I

    .line 1542
    iput v5, v1, Landroid/hardware/Camera$Size;->height:I

    .line 1543
    sget-boolean v10, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v10, :cond_1

    .line 1544
    const-string v10, "SettingChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "computeDesiredPreviewSize("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->buildSize(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_1
    return-object v1

    .line 1519
    .end local v1           #desired:Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    .line 1520
    .local v9, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 1521
    .local v4, preferred:Landroid/hardware/Camera$Size;
    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    iget v11, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int v7, v10, v11

    .line 1522
    .local v7, product:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1524
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1525
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 1526
    .local v8, size:Landroid/hardware/Camera$Size;
    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    iget v11, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v10, v11

    if-le v10, v7, :cond_3

    .line 1527
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1530
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :cond_4
    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v10, v10

    iget v12, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {p0, v9, v10, v11}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1532
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_5

    .line 1533
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1534
    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 1536
    :cond_5
    iget v6, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1537
    iget v5, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_0
.end method

.method public static filterUnsuportedPreference(Lcom/android/camera/PreferenceGroup;I)Lcom/android/camera/PreferenceGroup;
    .locals 4
    .parameter "preferenceGroup"
    .parameter "cameraId"

    .prologue
    .line 2027
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v2, v2, p1

    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2028
    sget-object v2, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v2, v2, p1

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 2029
    sget-object v2, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 2027
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2033
    :cond_1
    sget-object v2, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    array-length v1, v2

    .line 2034
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 2035
    sget-object v2, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2034
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2037
    :cond_2
    return-object p0
.end method

.method public static getCameraMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 859
    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v2, 0x28

    aget-object v1, v1, v2

    aget v0, v1, p0

    .line 860
    .local v0, cameraMode:I
    sget-boolean v1, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v1, :cond_0

    .line 861
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    return v0
.end method

.method private static getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 972
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v6, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    sget-object v11, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    array-length v7, v11

    .local v7, len:I
    :goto_0
    if-ge v4, v7, :cond_6

    .line 974
    sget-object v11, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    aget-object v1, v11, v4

    .line 975
    .local v1, curRestriction:Lcom/android/camera/Restriction;
    if-nez v1, :cond_1

    .line 973
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 978
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 979
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v8

    .line 981
    .local v8, limitedMode:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    move/from16 v0, p4

    if-ne v8, v0, :cond_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 982
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Restriction;

    .line 983
    .local v9, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v9}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v2

    .line 984
    .local v2, curRow:I
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 987
    const/4 v3, 0x0

    .line 988
    .local v3, curValue:Ljava/lang/String;
    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v11, v2}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 989
    invoke-static {p2, v2}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v3

    .line 994
    :cond_4
    :goto_2
    sget-object v11, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    invoke-virtual {v9}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/android/camera/SettingUtils;->buildEnableList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 990
    :cond_5
    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v11, v2}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 991
    invoke-static {p0, p1, v2}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1003
    .end local v1           #curRestriction:Lcom/android/camera/Restriction;
    .end local v2           #curRow:I
    .end local v3           #curValue:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #limitedMode:I
    .end local v9           #restriction:Lcom/android/camera/Restriction;
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 1004
    .local v10, size:I
    if-lez v10, :cond_7

    .line 1005
    new-array v11, v10, [Ljava/lang/String;

    invoke-interface {v6, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1007
    :goto_3
    return-object v11

    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private static getCapabilitySupportedValue(IILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "mode"
    .parameter "row"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1591
    const/4 v1, 0x0

    .line 1592
    .local v1, find:Z
    move-object v8, p2

    .line 1593
    .local v8, support:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    sget-object v9, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    array-length v4, v9

    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_5

    .line 1594
    sget-object v9, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    aget-object v0, v9, v2

    .line 1595
    .local v0, cur:Lcom/android/camera/Restriction;
    if-nez v0, :cond_1

    .line 1593
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1598
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getType()I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 1599
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v5

    .line 1601
    .local v5, limitedMode:I
    if-ne v5, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1602
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/Restriction;

    .line 1604
    .local v7, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v9

    if-ne v9, p1, :cond_2

    .line 1605
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1606
    invoke-virtual {v7, p2}, Lcom/android/camera/Restriction;->findMappingIndex(Ljava/lang/String;)I

    move-result v6

    .line 1607
    .local v6, mappingIndex:I
    if-ltz v6, :cond_4

    .line 1608
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #support:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1613
    .end local v6           #mappingIndex:I
    .restart local v8       #support:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 1614
    goto :goto_1

    .line 1610
    .restart local v6       #mappingIndex:I
    :cond_4
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #support:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #support:Ljava/lang/String;
    goto :goto_2

    .line 1622
    .end local v0           #cur:Lcom/android/camera/Restriction;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #limitedMode:I
    .end local v6           #mappingIndex:I
    .end local v7           #restriction:Lcom/android/camera/Restriction;
    :cond_5
    if-nez v1, :cond_b

    .line 1623
    const/4 v2, 0x0

    sget-object v9, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    array-length v4, v9

    :goto_3
    if-ge v2, v4, :cond_b

    .line 1624
    sget-object v9, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    aget-object v0, v9, v2

    .line 1625
    .restart local v0       #cur:Lcom/android/camera/Restriction;
    if-nez v0, :cond_7

    .line 1623
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1628
    :cond_7
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getType()I

    move-result v9

    if-ne v9, v11, :cond_6

    .line 1629
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v5

    .line 1631
    .restart local v5       #limitedMode:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_8

    if-ne v5, p0, :cond_6

    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1632
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/Restriction;

    .line 1634
    .restart local v7       #restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v9

    if-ne v9, p1, :cond_9

    .line 1635
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1636
    invoke-virtual {v7, p2}, Lcom/android/camera/Restriction;->findMappingIndex(Ljava/lang/String;)I

    move-result v6

    .line 1637
    .restart local v6       #mappingIndex:I
    if-ltz v6, :cond_a

    .line 1638
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #support:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #support:Ljava/lang/String;
    goto :goto_4

    .line 1640
    :cond_a
    invoke-virtual {v7}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #support:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #support:Ljava/lang/String;
    goto :goto_4

    .line 1652
    .end local v0           #cur:Lcom/android/camera/Restriction;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #limitedMode:I
    .end local v6           #mappingIndex:I
    .end local v7           #restriction:Lcom/android/camera/Restriction;
    :cond_b
    sget-boolean v9, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v9, :cond_c

    .line 1653
    const-string v9, "SettingChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCapabilitySupportedValue("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_c
    return-object v8
.end method

.method private static getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "row"

    .prologue
    .line 1136
    sget-object v5, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    aget-object v4, v5, p1

    .line 1137
    .local v4, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1138
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    instance-of v5, p0, Lcom/android/camera/Camera;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 1139
    check-cast v5, Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 1141
    :cond_0
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    .line 1142
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v1, v5, p1

    .line 1143
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 1144
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_1

    .line 1145
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v4

    .line 1146
    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1

    .line 1147
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    :cond_1
    if-nez v4, :cond_2

    .line 1152
    sget-object v5, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    aget v3, v5, p1

    .line 1153
    .local v3, resId:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 1154
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1157
    .end local v3           #resId:I
    :cond_2
    sget-object v5, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    aput-object v4, v5, p1

    .line 1158
    sget-boolean v5, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v5, :cond_3

    .line 1159
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultValueFromXml("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_3
    sget-boolean v5, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v5, :cond_4

    .line 1163
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultValueFromXml("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_4
    return-object v4
.end method

.method private static getJpegQuality(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "quality"

    .prologue
    .line 1379
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v0

    .line 1380
    .local v0, cameraId:I
    invoke-static {v0, p1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 1382
    .local v1, jpegQuality:I
    return v1
.end method

.method private static getMaxSupportedPreviewFrameRate(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1574
    .local p0, supportedPreviewRate:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1575
    .local v1, maxFrameRate:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1576
    .local v2, rate:I
    if-le v2, v1, :cond_0

    .line 1577
    move v1, v2

    goto :goto_0

    .line 1580
    .end local v2           #rate:I
    :cond_1
    sget-boolean v3, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v3, :cond_2

    .line 1581
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMaxSupportedPreviewFrameRate() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_2
    return v1
.end method

.method public static getModeContinousFocusMode(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 871
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getModeDefaultFocusModes(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getModeSettingGroupForParameters(I)[I
    .locals 1
    .parameter "mode"

    .prologue
    .line 844
    invoke-static {p0}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    goto :goto_0
.end method

.method private static getModeSettingGroupForUI(I)[I
    .locals 1
    .parameter "mode"

    .prologue
    .line 840
    invoke-static {p0}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    goto :goto_0
.end method

.method private static getModeTableKeyValues(I[I)[Ljava/lang/String;
    .locals 1
    .parameter "mode"
    .parameter "appliedGroup"

    .prologue
    .line 927
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    invoke-static {v0, p0, p1}, Lcom/android/camera/SettingChecker;->getSettingKeyValues([[II[I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;
    .locals 5
    .parameter "parameters"
    .parameter "row"

    .prologue
    .line 1178
    if-nez p0, :cond_1

    .line 1179
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") parameters=null!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1180
    const/4 v1, 0x0

    .line 1263
    :cond_0
    :goto_0
    return-object v1

    .line 1182
    :cond_1
    const/4 v1, 0x0

    .line 1183
    .local v1, value:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1260
    :goto_1
    :pswitch_0
    sget-boolean v2, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v2, :cond_0

    .line 1261
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 1186
    goto :goto_1

    .line 1188
    :pswitch_2
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get dual camera from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1190
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1191
    goto :goto_1

    .line 1193
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    .line 1194
    goto :goto_1

    .line 1196
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 1197
    goto :goto_1

    .line 1199
    :pswitch_6
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get image adjustment from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1201
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getHueMode()Ljava/lang/String;

    move-result-object v1

    .line 1202
    goto :goto_1

    .line 1204
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getContrastMode()Ljava/lang/String;

    goto :goto_1

    .line 1207
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getEdgeMode()Ljava/lang/String;

    goto :goto_1

    .line 1210
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSaturationMode()Ljava/lang/String;

    goto :goto_1

    .line 1213
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getBrightnessMode()Ljava/lang/String;

    goto :goto_1

    .line 1216
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    .line 1217
    goto :goto_1

    .line 1219
    :pswitch_d
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get geo tag from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1224
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v1

    .line 1225
    goto :goto_1

    .line 1227
    :pswitch_f
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get self timer from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1229
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v1

    .line 1230
    goto/16 :goto_1

    .line 1232
    :pswitch_11
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get continuous number from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1234
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1235
    .local v0, size:Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1236
    goto/16 :goto_1

    .line 1238
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getISOSpeed()Ljava/lang/String;

    move-result-object v1

    .line 1239
    goto/16 :goto_1

    .line 1241
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1242
    goto/16 :goto_1

    .line 1244
    :pswitch_15
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get microphone from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1246
    :pswitch_16
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get audio mode from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1248
    :pswitch_17
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get time lapse from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1250
    :pswitch_18
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get live effect from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1256
    :pswitch_19
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get recording hint from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
    .end packed-switch
.end method

.method private static getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "preferences"
    .parameter "row"

    .prologue
    .line 1169
    sget-object v2, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 1170
    .local v0, key:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, value:Ljava/lang/String;
    sget-boolean v2, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v2, :cond_0

    .line 1172
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferenceValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    return-object v1
.end method

.method private static getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 938
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 939
    .local v5, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    array-length v6, v10

    .local v6, len:I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 940
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    aget-object v0, v10, v3

    .line 941
    .local v0, curRestriction:Lcom/android/camera/Restriction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v10

    invoke-static {p3, v10}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 939
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v1

    .line 945
    .local v1, curRow:I
    const/4 v2, 0x0

    .line 946
    .local v2, curValue:Ljava/lang/String;
    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v10, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 947
    invoke-static {p2, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    .line 951
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v7

    .line 952
    .local v7, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Restriction;

    .line 954
    .local v8, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v10

    invoke-static {p3, v10}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 958
    sget-object v10, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v11

    aget-object v10, v10, v11

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 948
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #restriction:Lcom/android/camera/Restriction;
    :cond_4
    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v10, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 949
    invoke-static {p0, p1, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 963
    .end local v0           #curRestriction:Lcom/android/camera/Restriction;
    .end local v1           #curRow:I
    .end local v2           #curValue:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 964
    .local v9, size:I
    if-lez v9, :cond_6

    .line 965
    new-array v10, v9, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 967
    :goto_3
    return-object v10

    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;
    .locals 3
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 932
    sget-object v1, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 933
    .local v0, sceneMode:I
    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    invoke-static {v1, v0, p1}, Lcom/android/camera/SettingChecker;->getSettingKeyValues([[II[I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSettingKeyValues([[II[I)[Ljava/lang/String;
    .locals 9
    .parameter "matrix"
    .parameter "column"
    .parameter "appliedGroup"

    .prologue
    .line 875
    sget-boolean v6, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v6, :cond_0

    .line 876
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSettingKeyValues("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v1, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, p2

    .local v2, len:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 880
    aget v3, p2, v0

    .line 881
    .local v3, row:I
    aget-object v4, p0, v3

    .line 883
    .local v4, settings:[I
    if-nez v4, :cond_1

    .line 879
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    :cond_1
    aget-object v6, p0, v3

    aget v5, v6, p1

    .line 887
    .local v5, state:I
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 895
    :sswitch_1
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    const-string v6, "disable-value"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 899
    :sswitch_2
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 903
    :sswitch_3
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 907
    :sswitch_4
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 911
    :sswitch_5
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :sswitch_6
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 922
    .end local v3           #row:I
    .end local v4           #settings:[I
    .end local v5           #state:I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 887
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
        0x12f -> :sswitch_5
        0x130 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getSettingKeys([I)[Ljava/lang/String;
    .locals 5
    .parameter "indexes"

    .prologue
    .line 820
    if-eqz p0, :cond_0

    .line 821
    array-length v2, p0

    .line 822
    .local v2, len:I
    new-array v1, v2, [Ljava/lang/String;

    .line 823
    .local v1, keys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 824
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget v4, p0, v0

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v0           #i:I
    .end local v1           #keys:[Ljava/lang/String;
    .end local v2           #len:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private static isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z
    .locals 10
    .parameter "parameters"
    .parameter "row"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 1659
    if-nez p0, :cond_0

    .line 1660
    const-string v7, "SettingChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isParametersSupportedValue("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") parameters=null!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7, v8, v9}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    :goto_0
    return v6

    .line 1663
    :cond_0
    const/4 v3, 0x0

    .line 1664
    .local v3, support:Z
    const/4 v4, 0x0

    .line 1665
    .local v4, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1666
    .local v5, supportedListSize:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    packed-switch p1, :pswitch_data_0

    .line 1753
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v4, :cond_3

    .line 1754
    :goto_2
    sget-boolean v6, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v6, :cond_2

    .line 1755
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportedValue("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") supportedList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v6, v3

    .line 1757
    goto :goto_0

    .line 1668
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v4

    .line 1669
    goto :goto_1

    .line 1671
    :pswitch_2
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get dual camera capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1673
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 1674
    .local v1, max:I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 1675
    .local v2, min:I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1676
    .local v0, exposure:I
    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    .line 1677
    const/4 v3, 0x1

    goto :goto_1

    .line 1681
    .end local v0           #exposure:I
    .end local v1           #max:I
    .end local v2           #min:I
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v4

    .line 1682
    goto :goto_1

    .line 1684
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    .line 1685
    goto :goto_1

    .line 1687
    :pswitch_6
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get image adjustment capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1689
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedHueMode()Ljava/util/List;

    move-result-object v4

    .line 1690
    goto :goto_1

    .line 1692
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v4

    .line 1693
    goto :goto_1

    .line 1695
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedEdgeMode()Ljava/util/List;

    move-result-object v4

    .line 1696
    goto :goto_1

    .line 1698
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSaturationMode()Ljava/util/List;

    move-result-object v4

    .line 1699
    goto :goto_1

    .line 1701
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedBrightnessMode()Ljava/util/List;

    move-result-object v4

    .line 1702
    goto :goto_1

    .line 1704
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v4

    .line 1705
    goto/16 :goto_1

    .line 1707
    :pswitch_d
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get geo tag capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1712
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v4

    .line 1713
    goto/16 :goto_1

    .line 1715
    :pswitch_f
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get self timer capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1717
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZSDSupported()Z

    move-result v3

    .line 1718
    goto/16 :goto_1

    .line 1720
    :pswitch_11
    const/4 v3, 0x1

    .line 1721
    goto/16 :goto_1

    .line 1724
    :pswitch_12
    const/4 v3, 0x1

    .line 1725
    goto/16 :goto_1

    .line 1727
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedISOSpeed()Ljava/util/List;

    move-result-object v4

    .line 1728
    goto/16 :goto_1

    .line 1730
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v3

    .line 1731
    goto/16 :goto_1

    .line 1733
    :pswitch_15
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get microphone capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1735
    :pswitch_16
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get audio mode capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1737
    :pswitch_17
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot time lapse capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1739
    :pswitch_18
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot get live effect capability."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1741
    :pswitch_19
    const/4 v3, 0x1

    .line 1742
    goto/16 :goto_1

    .line 1748
    :pswitch_1a
    const/4 v3, 0x1

    .line 1749
    goto/16 :goto_1

    .line 1753
    :cond_3
    invoke-interface {v4, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_4
    move v3, v6

    goto/16 :goto_2

    .line 1666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public static isSmoothZoom(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 836
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_SMOOTH:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isSupported(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 1587
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideoMode(I)Z
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v5, 0x2b

    .line 848
    sget-object v4, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    aget-object v4, v4, v5

    aget v1, v4, p0

    .line 849
    .local v1, state:I
    rem-int/lit8 v0, v1, 0x64

    .line 850
    .local v0, column:I
    sget-object v4, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v4, v4, v5

    aget-object v2, v4, v0

    .line 851
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 852
    .local v3, video:Z
    sget-boolean v4, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v4, :cond_0

    .line 853
    const-string v4, "SettingChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVideoMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    return v3
.end method

.method public static isZoomEnable(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 832
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_ENABLE:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method private varargs overridePreferences([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 1845
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 1860
    :cond_0
    return-void

    .line 1848
    :cond_1
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 1849
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 1850
    aget-object v2, p1, v1

    .line 1851
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    aget-object v4, p1, v5

    .line 1852
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1853
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_2

    invoke-static {v4}, Lcom/android/camera/SettingUtils;->isBuiltList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1854
    invoke-static {v4}, Lcom/android/camera/SettingUtils;->getEnabledList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 1855
    sget-boolean v5, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v5, :cond_2

    .line 1856
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overridePreferences() key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 1894
    if-eqz p1, :cond_0

    array-length v5, p1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 1909
    :cond_0
    return-void

    .line 1897
    :cond_1
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 1898
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 1899
    aget-object v2, p1, v1

    .line 1900
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    aget-object v4, p1, v5

    .line 1901
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 1902
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_2

    .line 1903
    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;)V

    .line 1904
    sget-boolean v5, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v5, :cond_2

    .line 1905
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overrideSettings() key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private resetSettings(Lcom/android/camera/ComboPreferences;)V
    .locals 8
    .parameter "preferences"

    .prologue
    .line 1942
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1943
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v5, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1944
    sget-object v5, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    aget v4, v5, v1

    .line 1945
    .local v4, row:I
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 1946
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1947
    sget-boolean v5, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v5, :cond_0

    .line 1948
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetSettings() remove key["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1951
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #row:I
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1952
    return-void
.end method

.method private static reviseVideoCapability(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V
    .locals 7
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "profile"

    .prologue
    const/4 v6, 0x3

    .line 1551
    sget-boolean v3, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v3, :cond_0

    .line 1552
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reviseVideoCapability() begin profile.videoFrameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 1556
    .local v2, supportedFrameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/SettingChecker;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1557
    invoke-static {v2}, Lcom/android/camera/SettingChecker;->getMaxSupportedPreviewFrameRate(Ljava/util/List;)I

    move-result v0

    .line 1558
    .local v0, maxFrame:I
    iget v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v3, v0

    iget v4, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/2addr v3, v4

    iput v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1559
    iput v0, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1561
    .end local v0           #maxFrame:I
    :cond_1
    invoke-static {p0, p1, v6}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, sceneMode:Ljava/lang/String;
    invoke-static {p2, v6, v1}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1563
    const-string v3, "night"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1564
    iget v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1565
    iget v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1568
    :cond_2
    sget-boolean v3, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v3, :cond_3

    .line 1569
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reviseVideoCapability() end profile.videoFrameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_3
    return-void
.end method

.method private static setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "parameters"
    .parameter "row"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 1267
    if-nez p1, :cond_0

    .line 1268
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setParameterValue("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") parameters=null!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    :goto_0
    return v5

    .line 1271
    :cond_0
    const/4 v3, 0x0

    .line 1272
    .local v3, needreload:Z
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v6, p2

    .line 1273
    .local v2, key:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1372
    :cond_1
    :goto_1
    :pswitch_0
    sget-boolean v6, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v6, :cond_2

    .line 1373
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setParameterValue("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v3

    .line 1375
    goto :goto_0

    .line 1275
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1278
    :pswitch_2
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set dual camera to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1280
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1281
    .local v0, exposure:I
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1

    .line 1284
    .end local v0           #exposure:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1285
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1289
    const/4 v3, 0x1

    goto :goto_1

    .line 1293
    :pswitch_5
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_1

    .line 1296
    :pswitch_6
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set total image adjustement, Please use Hue, Contrast, Edge, staturation and Brightness."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1299
    :pswitch_7
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setHueMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1302
    :pswitch_8
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1305
    :pswitch_9
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setEdgeMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1308
    :pswitch_a
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setSaturationMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1311
    :pswitch_b
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setBrightnessMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1314
    :pswitch_c
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 1317
    :pswitch_d
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set geo tag to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1322
    :pswitch_e
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1325
    :pswitch_f
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set self timer to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1327
    :pswitch_10
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1330
    :pswitch_11
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Please use ROW_SETTING_CONTINUOUS_NUM to set shot number."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1332
    :pswitch_12
    invoke-static {p0, p1, p3}, Lcom/android/camera/SettingChecker;->setPicturePreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v3

    .line 1333
    goto/16 :goto_1

    .line 1335
    :pswitch_13
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1338
    :pswitch_14
    const-string v6, "on"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .line 1339
    .local v5, toggle:Z
    :cond_3
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_1

    .line 1342
    .end local v5           #toggle:Z
    :pswitch_15
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set microphone to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1344
    :pswitch_16
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set audio mode to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1346
    :pswitch_17
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set timelapse to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1348
    :pswitch_18
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set live effect to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1350
    :pswitch_19
    invoke-static {p0, p1, p3}, Lcom/android/camera/SettingChecker;->setVideoPreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v3

    .line 1351
    goto/16 :goto_1

    .line 1353
    :pswitch_1a
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto/16 :goto_1

    .line 1356
    :pswitch_1b
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setCaptureMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1359
    :pswitch_1c
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1360
    .local v4, number:I
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setBurstShotNum(I)V

    goto/16 :goto_1

    .line 1363
    .end local v4           #number:I
    :pswitch_1d
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/camera/SettingChecker;->getJpegQuality(Landroid/content/Context;I)I

    move-result v1

    .line 1364
    .local v1, jpegQuality:I
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_1

    .line 1367
    .end local v1           #jpegQuality:I
    :pswitch_1e
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    goto/16 :goto_1

    .line 1273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private static setPicturePreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 1386
    sget-boolean v8, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v8, :cond_0

    .line 1387
    const-string v8, "SettingChecker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPicturePreview("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    const/4 v2, 0x0

    .line 1390
    .local v2, needreload:Z
    if-nez p2, :cond_3

    .line 1391
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 1396
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 1400
    .local v5, size:Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 1401
    .local v6, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    check-cast p0, Landroid/app/Activity;

    .end local p0
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {p0, v6, v8, v9}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1403
    .local v3, optimalSize:Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 1404
    .local v4, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1405
    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1416
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1417
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 1418
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1419
    .local v1, max:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1421
    .end local v1           #max:Ljava/lang/Integer;
    :cond_2
    return v2

    .line 1393
    .end local v0           #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v4           #original:Landroid/hardware/Camera$Size;
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local p0
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 1394
    .local v7, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p2, v7, p1}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private static setVideoPreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 26
    .parameter "context"
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 1425
    const/4 v11, 0x0

    .local v11, needreload:Z
    move-object/from16 v3, p0

    .line 1426
    check-cast v3, Lcom/android/camera/Camera;

    .line 1427
    .local v3, camera:Lcom/android/camera/Camera;
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v4

    .line 1428
    .local v4, cameraId:I
    invoke-virtual {v3}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v19

    .line 1429
    .local v19, useDefault:Z
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v10

    .line 1430
    .local v10, mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1434
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c00e9

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1436
    .local v5, defaultQuality:Ljava/lang/String;
    const-string v22, "pref_video_quality_key"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1437
    .local v21, videoQuality:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1440
    .local v17, quality:I
    const-string v22, "android.intent.extra.videoQuality"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v20

    .line 1441
    .local v20, userLimitQuality:Z
    if-eqz v20, :cond_0

    .line 1442
    const-string v22, "android.intent.extra.videoQuality"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1443
    .local v7, extraVideoQuality:I
    if-lez v7, :cond_6

    .line 1444
    invoke-static {v4, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1445
    move/from16 v17, v7

    .line 1459
    .end local v7           #extraVideoQuality:I
    :cond_0
    :goto_0
    invoke-static {v10}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v6

    .line 1460
    .local v6, effectType:I
    if-eqz v6, :cond_1

    .line 1462
    if-nez v20, :cond_1

    .line 1463
    const/16 v22, 0x10

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1464
    const/16 v17, 0x10

    .line 1475
    :cond_1
    :goto_1
    const/16 v22, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v10, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v8

    .line 1476
    .local v8, frameIntervalStr:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/Camera;->fetechProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v16

    .line 1478
    .local v16, profile:Landroid/media/CamcorderProfile;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Lcom/android/camera/SettingChecker;->computeDesiredPreviewSize(Landroid/app/Activity;Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;Z)Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 1479
    .local v15, previewSize:Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 1480
    .local v14, originalPreviewSize:Landroid/hardware/Camera$Size;
    invoke-virtual {v14, v15}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1481
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1490
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v10, v1, v2}, Lcom/android/camera/SettingChecker;->reviseVideoCapability(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V

    .line 1491
    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v18

    .line 1499
    .local v18, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 1501
    .local v12, optimalSize:Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 1502
    .local v13, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v13, v12}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1503
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1508
    .end local v12           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v13           #original:Landroid/hardware/Camera$Size;
    .end local v18           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    :goto_2
    return v11

    .line 1447
    .end local v6           #effectType:I
    .end local v8           #frameIntervalStr:Ljava/lang/String;
    .end local v14           #originalPreviewSize:Landroid/hardware/Camera$Size;
    .end local v15           #previewSize:Landroid/hardware/Camera$Size;
    .end local v16           #profile:Landroid/media/CamcorderProfile;
    .restart local v7       #extraVideoQuality:I
    :cond_4
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1448
    const/16 v17, 0x9

    goto/16 :goto_0

    .line 1450
    :cond_5
    const/16 v17, 0xa

    goto/16 :goto_0

    .line 1454
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1466
    .end local v7           #extraVideoQuality:I
    .restart local v6       #effectType:I
    :cond_7
    if-nez v4, :cond_8

    .line 1467
    const/16 v17, 0x9

    goto/16 :goto_1

    .line 1469
    :cond_8
    const/16 v17, 0xa

    goto/16 :goto_1

    .line 1506
    .restart local v8       #frameIntervalStr:Ljava/lang/String;
    .restart local v14       #originalPreviewSize:Landroid/hardware/Camera$Size;
    .restart local v15       #previewSize:Landroid/hardware/Camera$Size;
    .restart local v16       #profile:Landroid/media/CamcorderProfile;
    :cond_9
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto :goto_2
.end method


# virtual methods
.method public applyFocusCapabilities(Z)V
    .locals 3
    .parameter "setArea"

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    .line 1772
    .local v0, focusManager:Lcom/android/camera/FocusManager;
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAeLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1774
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAeLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1776
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAwbLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1777
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1780
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusAreaSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1781
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1783
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreaSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 1785
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1788
    :cond_3
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->handleFocus()Z

    .line 1789
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1791
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->applyContinousCallback()V

    .line 1792
    return-void
.end method

.method public applyParametersToUI()V
    .locals 6

    .prologue
    .line 1863
    sget-boolean v4, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v4, :cond_0

    .line 1864
    const-string v4, "SettingChecker"

    const-string v5, "applyParametersToUI()"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    .line 1867
    .local v3, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    .line 1868
    .local v2, mode:I
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SETTING:[I

    .line 1869
    .local v0, appliedGroup:[I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingChecker;->clearOverrideSettings([I)V

    .line 1870
    invoke-static {v2, v0}, Lcom/android/camera/SettingChecker;->getModeTableKeyValues(I[I)[Ljava/lang/String;

    move-result-object v1

    .line 1871
    .local v1, keyvalues:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1872
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/camera/SettingChecker;->getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 1873
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1874
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v3, v5, v0}, Lcom/android/camera/SettingChecker;->getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 1875
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1876
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v3, v5, v0, v2}, Lcom/android/camera/SettingChecker;->getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;

    move-result-object v1

    .line 1877
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1879
    return-void
.end method

.method public applyParametersToUIImmediately()V
    .locals 6

    .prologue
    .line 1815
    sget-boolean v4, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v4, :cond_0

    .line 1816
    const-string v4, "SettingChecker"

    const-string v5, "applyParametersToUIImmediately()"

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SCREEN:[I

    .line 1819
    .local v0, appliedGroup:[I
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    .line 1820
    .local v3, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    .line 1821
    .local v2, mode:I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingChecker;->clearOverrideSettings([I)V

    .line 1822
    invoke-static {v2, v0}, Lcom/android/camera/SettingChecker;->getModeTableKeyValues(I[I)[Ljava/lang/String;

    move-result-object v1

    .line 1823
    .local v1, keyvalues:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1824
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/camera/SettingChecker;->getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 1825
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1826
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v3, v5, v0}, Lcom/android/camera/SettingChecker;->getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 1827
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 1828
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v3, v5, v0, v2}, Lcom/android/camera/SettingChecker;->getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;

    move-result-object v1

    .line 1830
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overridePreferences([Ljava/lang/String;)V

    .line 1831
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    new-instance v5, Lcom/android/camera/SettingChecker$1;

    invoke-direct {v5, p0}, Lcom/android/camera/SettingChecker$1;-><init>(Lcom/android/camera/SettingChecker;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1842
    return-void
.end method

.method public applyPreferenceToParameters()V
    .locals 5

    .prologue
    .line 1795
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    .line 1796
    .local v2, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    .line 1798
    .local v1, mode:I
    sput v1, Lcom/android/camera/SettingChecker;->mMode:I

    .line 1800
    invoke-static {v1}, Lcom/android/camera/SettingChecker;->getModeSettingGroupForParameters(I)[I

    move-result-object v0

    .line 1802
    .local v0, appliedGroup:[I
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/camera/SettingChecker;->applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V

    .line 1804
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/camera/SettingChecker;->applyModeTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V

    .line 1806
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0}, Lcom/android/camera/SettingChecker;->applySceneTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)V

    .line 1808
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/SettingChecker;->applyRestrictionsToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;[I)V

    .line 1810
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/SettingChecker;->applyFocusCapabilities(Z)V

    .line 1811
    return-void
.end method

.method public applyValueToParameters(ILjava/lang/String;)V
    .locals 3
    .parameter "row"
    .parameter "value"

    .prologue
    .line 2017
    sget-boolean v0, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v0, :cond_0

    .line 2018
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyValueToParameters("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/camera/SettingChecker;->applyValueToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 2021
    return-void
.end method

.method public disableContinuousShot()V
    .locals 3

    .prologue
    const/16 v2, 0x2a

    .line 1964
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 1965
    const/16 v0, 0x29

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 1966
    return-void
.end method

.method public enableContinuousShot()V
    .locals 2

    .prologue
    .line 1958
    const/16 v0, 0x2a

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 1959
    const/16 v0, 0x29

    const-string v1, "continuousshot"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 1960
    return-void
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 4
    .parameter "row"

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-static {v1, p1}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2010
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v1, :cond_0

    .line 2011
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    return-object v0
.end method

.method public getParameterValue(I)Ljava/lang/String;
    .locals 1
    .parameter "row"

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceValue(I)Ljava/lang/String;
    .locals 4
    .parameter "row"

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v0

    .line 1978
    .local v0, value:Ljava/lang/String;
    sget-boolean v1, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v1, :cond_0

    .line 1979
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_0
    return-object v0
.end method

.method public getSettingCurrentValue(I)Ljava/lang/String;
    .locals 6
    .parameter "row"

    .prologue
    .line 1986
    const/4 v2, 0x0

    .line 1987
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 1988
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .line 1989
    .local v1, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 1990
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1992
    :cond_0
    if-nez v1, :cond_4

    .line 1993
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-static {v3, p1}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1997
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 1998
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v2

    .line 2001
    :cond_2
    sget-boolean v3, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v3, :cond_3

    .line 2002
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingCurrentValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_3
    return-object v2

    .line 1994
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1995
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isParametersSupportedValue(ILjava/lang/String;)Z
    .locals 1
    .parameter "row"
    .parameter "value"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetSettings()V
    .locals 14

    .prologue
    .line 1912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1913
    .local v6, start:J
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    .line 1914
    .local v3, curId:I
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v5

    .line 1915
    .local v5, preferences:Lcom/android/camera/ComboPreferences;
    if-eqz v5, :cond_3

    .line 1916
    invoke-direct {p0, v5}, Lcom/android/camera/SettingChecker;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 1917
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    .local v1, cameraIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getCameraCount()I

    move-result v2

    .line 1919
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1920
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1919
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1922
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1923
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1925
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1926
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    .line 1927
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1928
    .local v0, cameraId:I
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5, v10, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1929
    invoke-direct {p0, v5}, Lcom/android/camera/SettingChecker;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 1930
    sget-boolean v10, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v10, :cond_2

    .line 1931
    const-string v10, "SettingChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetSettings() reset cameraId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1935
    .end local v0           #cameraId:I
    .end local v1           #cameraIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1936
    .local v8, stop:J
    sget-boolean v10, Lcom/android/camera/SettingChecker;->LOG:Z

    if-eqz v10, :cond_4

    .line 1937
    const-string v10, "SettingChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetSettings() consume:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_4
    return-void
.end method
