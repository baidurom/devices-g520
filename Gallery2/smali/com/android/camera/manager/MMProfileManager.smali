.class public Lcom/android/camera/manager/MMProfileManager;
.super Ljava/lang/Object;
.source "MMProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;
    }
.end annotation


# static fields
.field private static EVENT_CAMERA_ACTIVITY:I

.field private static EVENT_CAMERA_HARDWARE:I

.field private static EVENT_CAMERA_ON_CREATE:I

.field private static EVENT_CAMERA_ON_DESTROY:I

.field private static EVENT_CAMERA_ON_PAUSE:I

.field private static EVENT_CAMERA_ON_RESUME:I

.field private static EVENT_CAMERA_OPEN:I

.field private static EVENT_CAMERA_RELEASE:I

.field private static EVENT_CAMERA_ROOT:I

.field private static EVENT_CAMERA_SCREEN_NAIL:I

.field private static EVENT_CAMERA_START_UP:I

.field private static EVENT_DRAW_SCREEN_NAIL:I

.field private static EVENT_FIRST_FRAME_AVAILABLE:I

.field private static EVENT_FRAME_AVAILABLE:I

.field private static EVENT_GET_PARAMETERS:I

.field private static EVENT_PHOTO_ACTOR:I

.field private static EVENT_PHOTO_SHUTTER_CLICK:I

.field private static EVENT_PHOTO_STORE_PICTURE:I

.field private static EVENT_PHOTO_TAKE_PICTURE:I

.field private static EVENT_REQUEST_RENDER:I

.field private static EVENT_SET_PARAMETERS:I

.field private static EVENT_START_PREVIEW:I

.field private static EVENT_STOP_PREVIEW:I

.field private static EVENT_SWITCH_CAMERA:I

.field private static EVENT_VIDEO_ACTOR:I

.field private static EVENT_VIDEO_SHUTTER_CLICK:I

.field private static EVENT_VIDEO_START_RECORD:I

.field private static EVENT_VIDEO_STOP_RECORD:I

.field private static EVENT_VIDEO_STORE_VIDEO:I

.field private static NAME_CAMERA_ACTIVITY:Ljava/lang/String;

.field private static NAME_CAMERA_HARDWARE:Ljava/lang/String;

.field private static NAME_CAMERA_ON_CREATE:Ljava/lang/String;

.field private static NAME_CAMERA_ON_DESTROY:Ljava/lang/String;

.field private static NAME_CAMERA_ON_PAUSE:Ljava/lang/String;

.field private static NAME_CAMERA_ON_RESUME:Ljava/lang/String;

.field private static NAME_CAMERA_OPEN:Ljava/lang/String;

.field private static NAME_CAMERA_RELEASE:Ljava/lang/String;

.field private static NAME_CAMERA_ROOT:Ljava/lang/String;

.field private static NAME_CAMERA_SCREEN_NAIL:Ljava/lang/String;

.field private static NAME_CAMERA_START_PREVIEW:Ljava/lang/String;

.field private static NAME_CAMERA_START_UP:Ljava/lang/String;

.field private static NAME_CAMERA_STOP_PREVIEW:Ljava/lang/String;

.field private static NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

.field private static NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

.field private static NAME_FRAME_AVAILABLE:Ljava/lang/String;

.field private static NAME_GET_PARAMETERS:Ljava/lang/String;

.field private static NAME_PHOTO_ACTOR:Ljava/lang/String;

.field private static NAME_PHOTO_SHUTTER_CLICK:Ljava/lang/String;

.field private static NAME_PHOTO_STORE_PICTURE:Ljava/lang/String;

.field private static NAME_PHOTO_TAKE_PICTURE:Ljava/lang/String;

.field private static NAME_REQUEST_RENDER:Ljava/lang/String;

.field private static NAME_SET_PARAMETERS:Ljava/lang/String;

.field private static NAME_SWITCH_CAMERA:Ljava/lang/String;

.field private static NAME_VIDEO_ACTOR:Ljava/lang/String;

.field private static NAME_VIDEO_SHUTTER_CLICK:Ljava/lang/String;

.field private static NAME_VIDEO_START_RECORD:Ljava/lang/String;

.field private static NAME_VIDEO_STOP_RECORD:Ljava/lang/String;

.field private static NAME_VIDEO_STORE_VIDEO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "CameraApp"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ROOT:Ljava/lang/String;

    .line 48
    const-string v0, "CameraHardWare"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_HARDWARE:Ljava/lang/String;

    .line 49
    const-string v0, "Open"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_OPEN:Ljava/lang/String;

    .line 50
    const-string v0, "StartPreview"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_START_PREVIEW:Ljava/lang/String;

    .line 51
    const-string v0, "StopPreview"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_STOP_PREVIEW:Ljava/lang/String;

    .line 52
    const-string v0, "Release"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_RELEASE:Ljava/lang/String;

    .line 53
    const-string v0, "getParameters"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_GET_PARAMETERS:Ljava/lang/String;

    .line 54
    const-string v0, "setParameters"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_SET_PARAMETERS:Ljava/lang/String;

    .line 56
    const-string v0, "PhotoActor"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_ACTOR:Ljava/lang/String;

    .line 57
    const-string v0, "ClickPhotoShutter"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_SHUTTER_CLICK:Ljava/lang/String;

    .line 58
    const-string v0, "TakePicture"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_TAKE_PICTURE:Ljava/lang/String;

    .line 59
    const-string v0, "StorePicture"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_STORE_PICTURE:Ljava/lang/String;

    .line 61
    const-string v0, "SwitchCamera"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_SWITCH_CAMERA:Ljava/lang/String;

    .line 63
    const-string v0, "VideoActor"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_ACTOR:Ljava/lang/String;

    .line 64
    const-string v0, "ClickVideoShutter"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_SHUTTER_CLICK:Ljava/lang/String;

    .line 65
    const-string v0, "VideoStartRecord"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_START_RECORD:Ljava/lang/String;

    .line 66
    const-string v0, "VideoStopRecord"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_STOP_RECORD:Ljava/lang/String;

    .line 67
    const-string v0, "StoreVideo"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_STORE_VIDEO:Ljava/lang/String;

    .line 69
    const-string v0, "CameraScreenNail"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_SCREEN_NAIL:Ljava/lang/String;

    .line 70
    const-string v0, "FrameAvailable"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_FRAME_AVAILABLE:Ljava/lang/String;

    .line 71
    const-string v0, "FirstFrameAvailable"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

    .line 72
    const-string v0, "RequestRender"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_REQUEST_RENDER:Ljava/lang/String;

    .line 73
    const-string v0, "DrawScreenNail"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

    .line 75
    const-string v0, "CameraActivity"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ACTIVITY:Ljava/lang/String;

    .line 76
    const-string v0, "CameraOnCreate"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_CREATE:Ljava/lang/String;

    .line 77
    const-string v0, "CameraOnResume"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_RESUME:Ljava/lang/String;

    .line 78
    const-string v0, "CameraOnPause"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_PAUSE:Ljava/lang/String;

    .line 79
    const-string v0, "CameraOnDestroy"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_DESTROY:Ljava/lang/String;

    .line 80
    const-string v0, "CameraStartUp"

    sput-object v0, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_START_UP:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ROOT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    .line 87
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    .line 89
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_OPEN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    .line 91
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_START_PREVIEW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    .line 93
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_STOP_PREVIEW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    .line 95
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_RELEASE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    .line 97
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_GET_PARAMETERS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    .line 99
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_HARDWARE:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_SET_PARAMETERS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    .line 103
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_ACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    .line 105
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_SHUTTER_CLICK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_CLICK:I

    .line 107
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_TAKE_PICTURE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    .line 109
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_PHOTO_STORE_PICTURE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    .line 113
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_SWITCH_CAMERA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    .line 117
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_ACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    .line 119
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_SHUTTER_CLICK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_CLICK:I

    .line 121
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_START_RECORD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    .line 123
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_STOP_RECORD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    .line 125
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_ACTOR:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_VIDEO_STORE_VIDEO:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    .line 129
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_SCREEN_NAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    .line 131
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_FRAME_AVAILABLE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FRAME_AVAILABLE:I

    .line 133
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_FIRST_FRAME_AVAILABLE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    .line 135
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_REQUEST_RENDER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_REQUEST_RENDER:I

    .line 137
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_SCREEN_NAIL:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_DRAW_SCREEN_NAIL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    .line 141
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ROOT:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ACTIVITY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    .line 143
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_CREATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    .line 145
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_RESUME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    .line 147
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_PAUSE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    .line 149
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_ON_DESTROY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    .line 151
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ACTIVITY:I

    sget-object v1, Lcom/android/camera/manager/MMProfileManager;->NAME_CAMERA_START_UP:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    return-void
.end method

.method public static startProfileCameraOnCreate()V
    .locals 2

    .prologue
    .line 354
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 357
    return-void
.end method

.method public static startProfileCameraOnDestroy()V
    .locals 2

    .prologue
    .line 390
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 393
    return-void
.end method

.method public static startProfileCameraOnPause()V
    .locals 2

    .prologue
    .line 378
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 381
    return-void
.end method

.method public static startProfileCameraOnResume()V
    .locals 2

    .prologue
    .line 366
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 369
    return-void
.end method

.method public static startProfileCameraOpen()V
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 159
    return-void
.end method

.method public static startProfileCameraRelease()V
    .locals 2

    .prologue
    .line 192
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 195
    return-void
.end method

.method public static startProfileCameraStartUp()V
    .locals 2

    .prologue
    .line 402
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 405
    return-void
.end method

.method public static startProfileDrawScreenNail()V
    .locals 2

    .prologue
    .line 342
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 345
    return-void
.end method

.method public static startProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 324
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 327
    return-void
.end method

.method public static startProfileGetParameters()V
    .locals 2

    .prologue
    .line 204
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 207
    return-void
.end method

.method public static startProfileSetParameters()V
    .locals 2

    .prologue
    .line 216
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 219
    return-void
.end method

.method public static startProfileStartPreview()V
    .locals 2

    .prologue
    .line 168
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 171
    return-void
.end method

.method public static startProfileStartVideoRecording()V
    .locals 2

    .prologue
    .line 276
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 279
    return-void
.end method

.method public static startProfileStopPreview()V
    .locals 2

    .prologue
    .line 180
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 183
    return-void
.end method

.method public static startProfileStopVideoRecording()V
    .locals 2

    .prologue
    .line 288
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 291
    return-void
.end method

.method public static startProfileStorePicture()V
    .locals 2

    .prologue
    .line 246
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 249
    return-void
.end method

.method public static startProfileStoreVideo()V
    .locals 2

    .prologue
    .line 300
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 303
    return-void
.end method

.method public static startProfileSwitchCamera()V
    .locals 2

    .prologue
    .line 258
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 261
    return-void
.end method

.method public static startProfileTakePicture()V
    .locals 2

    .prologue
    .line 228
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 231
    return-void
.end method

.method public static stopProfileCameraOnCreate()V
    .locals 2

    .prologue
    .line 360
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_CREATE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 363
    return-void
.end method

.method public static stopProfileCameraOnDestroy()V
    .locals 2

    .prologue
    .line 396
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_DESTROY:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 399
    return-void
.end method

.method public static stopProfileCameraOnPause()V
    .locals 2

    .prologue
    .line 384
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_PAUSE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 387
    return-void
.end method

.method public static stopProfileCameraOnResume()V
    .locals 2

    .prologue
    .line 372
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_ON_RESUME:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 375
    return-void
.end method

.method public static stopProfileCameraOpen()V
    .locals 2

    .prologue
    .line 162
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_OPEN:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 165
    return-void
.end method

.method public static stopProfileCameraRelease()V
    .locals 2

    .prologue
    .line 198
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_RELEASE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 201
    return-void
.end method

.method public static stopProfileCameraStartUp()V
    .locals 2

    .prologue
    .line 408
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_CAMERA_START_UP:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 411
    return-void
.end method

.method public static stopProfileDrawScreenNail()V
    .locals 2

    .prologue
    .line 348
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_DRAW_SCREEN_NAIL:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 351
    return-void
.end method

.method public static stopProfileFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 330
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 333
    return-void
.end method

.method public static stopProfileGetParameters()V
    .locals 2

    .prologue
    .line 210
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_GET_PARAMETERS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 213
    return-void
.end method

.method public static stopProfileSetParameters()V
    .locals 2

    .prologue
    .line 222
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SET_PARAMETERS:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 225
    return-void
.end method

.method public static stopProfileStartPreview()V
    .locals 2

    .prologue
    .line 174
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_START_PREVIEW:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 177
    return-void
.end method

.method public static stopProfileStartVideoRecording()V
    .locals 2

    .prologue
    .line 282
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_START_RECORD:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 285
    return-void
.end method

.method public static stopProfileStopPreview()V
    .locals 2

    .prologue
    .line 186
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_STOP_PREVIEW:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 189
    return-void
.end method

.method public static stopProfileStopVideoRecording()V
    .locals 2

    .prologue
    .line 294
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STOP_RECORD:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 297
    return-void
.end method

.method public static stopProfileStorePicture()V
    .locals 2

    .prologue
    .line 252
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_STORE_PICTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 255
    return-void
.end method

.method public static stopProfileStoreVideo()V
    .locals 2

    .prologue
    .line 306
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_STORE_VIDEO:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 309
    return-void
.end method

.method public static stopProfileSwitchCamera()V
    .locals 2

    .prologue
    .line 264
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_SWITCH_CAMERA:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 267
    return-void
.end method

.method public static stopProfileTakePicture()V
    .locals 2

    .prologue
    .line 234
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_TAKE_PICTURE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 237
    return-void
.end method

.method public static triggerFirstFrameAvailable()V
    .locals 2

    .prologue
    .line 318
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FIRST_FRAME_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 321
    return-void
.end method

.method public static triggerFrameAvailable()V
    .locals 2

    .prologue
    .line 312
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_FRAME_AVAILABLE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 315
    return-void
.end method

.method public static triggerPhotoShutterClick()V
    .locals 2

    .prologue
    .line 240
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_PHOTO_SHUTTER_CLICK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 243
    return-void
.end method

.method public static triggerRequestRender()V
    .locals 2

    .prologue
    .line 336
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_REQUEST_RENDER:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 339
    return-void
.end method

.method public static triggerVideoShutterClick()V
    .locals 2

    .prologue
    .line 270
    sget v0, Lcom/android/camera/manager/MMProfileManager;->EVENT_VIDEO_SHUTTER_CLICK:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;->MMProfileLog(II)V

    .line 273
    return-void
.end method
