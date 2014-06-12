.class public Lcom/android/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String; = null

.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final DCIM:Ljava/lang/String; = null

.field public static final DIRECTORY:Ljava/lang/String; = null

.field public static final FILE_TYPE_PANO:I = 0x2

.field public static final FILE_TYPE_PHOTO:I = 0x0

.field public static final FILE_TYPE_VIDEO:I = 0x1

.field public static final FULL_SDCARD:J = -0x4L

.field private static final LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong; = null

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final LOW_STORAGE_THRESHOLD:J = 0x2faf080L

.field static final PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICTURE_TYPE_JPG:I = 0x0

.field public static final PICTURE_TYPE_JPS:I = 0x2

.field public static final PICTURE_TYPE_MPO:I = 0x1

.field public static final PICTURE_TYPE_MPO_3D:I = 0x3

.field public static final PREPARING:J = -0x2L

.field public static final RECORD_LOW_STORAGE_THRESHOLD:J = 0x2dc6c00L

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static sMountPoint:Ljava/lang/String;

.field private static sStorageManager:Landroid/os/storage/StorageManager;

.field private static sStorageReady:Z

.field private static sBaiduPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x78000

    const/high16 v6, 0x5

    const v5, 0x28000

    const/16 v4, 0x7800

    const/16 v3, 0x3400

    .line 36
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/Storage;->LOG:Z

    .line 38
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/camera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    .line 75
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-normal"

    const v2, 0x10bb66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-fine"

    const v2, 0x10bb66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-superfine"

    const v2, 0x14ea40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-normal"

    const v2, 0xaa000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-fine"

    const v2, 0xaa000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-superfine"

    const v2, 0xd4800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-normal"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-fine"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-superfine"

    const v2, 0x96000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-normal"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-fine"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-superfine"

    const v2, 0x96000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-normal"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-fine"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-superfine"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-normal"

    const v2, 0x32000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-fine"

    const v2, 0x3c000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-superfine"

    const v2, 0x5a000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-normal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-fine"

    const/high16 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-superfine"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-normal"

    const v2, 0x19000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-fine"

    const v2, 0x1e000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-superfine"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-normal"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-fine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-superfine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-normal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-fine"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-superfine"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "mav"

    const v2, 0xfd000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "autorama"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const v1, 0x16e360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method

.method public static generateFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "pictureType"

    .prologue
    .line 340
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 342
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateFilepath(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileType"
    .parameter "fileName"

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/camera/Storage;->getFileDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateMimetype(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "pictureType"

    .prologue
    .line 350
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 351
    :cond_0
    const-string v0, "image/mpo"

    .line 355
    :goto_0
    return-object v0

    .line 352
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 353
    const-string v0, "image/x-jps"

    goto :goto_0

    .line 355
    :cond_2
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method public static generateMpoType(I)I
    .locals 1
    .parameter "pictureType"

    .prologue
    .line 330
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 331
    const v0, 0x20003

    .line 335
    :goto_0
    return v0

    .line 332
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 333
    const v0, 0x20002

    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableSpace()J
    .locals 14

    .prologue
    .line 177
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v8

    .line 178
    .local v8, storageManager:Landroid/os/storage/StorageManager;
    sget-object v10, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, state:Ljava/lang/String;
    const-string v10, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "External storage state="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mount point = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v10, "checking"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 181
    const-wide/16 v10, -0x2

    .line 210
    :goto_0
    return-wide v10

    .line 183
    :cond_0
    const-string v10, "mounted"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 184
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v10, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    .line 191
    .local v9, types:[I
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v9

    .local v5, len:I
    :goto_1
    if-ge v3, v5, :cond_5

    .line 192
    new-instance v1, Ljava/io/File;

    aget v10, v9, v3

    invoke-static {v10}, Lcom/android/camera/Storage;->getFileDirectory(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 195
    .local v4, isDirectory:Z
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 196
    .local v0, canWrite:Z
    if-eqz v4, :cond_2

    if-nez v0, :cond_4

    .line 197
    :cond_2
    sget-boolean v10, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v10, :cond_3

    .line 198
    const-string v10, "CameraStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvailableSpace() isDirectory="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", canWrite="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    const-wide/16 v10, -0x4

    goto :goto_0

    .line 191
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    .end local v0           #canWrite:Z
    .end local v1           #dir:Ljava/io/File;
    .end local v4           #isDirectory:Z
    :cond_5
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/camera/Storage;->getFileDirectory(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 206
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    goto :goto_0

    .line 207
    .end local v6           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "CameraStorage"

    const-string v11, "Fail to access external storage"

    invoke-static {v10, v11, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const-wide/16 v10, -0x3

    goto :goto_0

    .line 186
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getBucketId(I)Ljava/lang/String;
    .locals 1
    .parameter "fileType"

    .prologue
    .line 326
    invoke-static {p0}, Lcom/android/camera/Storage;->getFileDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "directory"

    .prologue
    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraScreenNailPath()Ljava/lang/String;
    .locals 12

    .prologue
    .line 281
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getPathPicker()Lcom/mediatek/camera/ext/ISavingPath;

    move-result-object v4

    .line 282
    .local v4, pathPicker:Lcom/mediatek/camera/ext/ISavingPath;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v5, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .line 288
    .local v8, types:[I
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v8

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v8, v1

    invoke-interface {v4, v10}, Lcom/mediatek/camera/ext/ISavingPath;->getFilePath(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, path:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 291
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    sget-boolean v9, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v9, :cond_0

    .line 293
    const-string v9, "CameraStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCameraPath() add "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 298
    .local v7, size:I
    const-string v6, "/local/all/"

    .line 299
    .local v6, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 300
    .local v0, cameraPath:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 301
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "why no path? pathPicker="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 302
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/local/all/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_3
    sget-boolean v9, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v9, :cond_4

    .line 316
    const-string v9, "CameraStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCameraScreenNailPath() size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_4
    return-object v0

    .line 306
    :cond_5
    const-string v0, "/combo/item/{"

    .line 307
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_3

    .line 308
    add-int/lit8 v9, v7, -0x1

    if-ge v1, v9, :cond_6

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/local/all/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/local/all/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 283
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getFileDirectory(I)Ljava/lang/String;
    .locals 5
    .parameter "fileType"

    .prologue
    .line 272
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getPathPicker()Lcom/mediatek/camera/ext/ISavingPath;

    move-result-object v1

    .line 273
    .local v1, pathPicker:Lcom/mediatek/camera/ext/ISavingPath;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, p0}, Lcom/mediatek/camera/ext/ISavingPath;->getFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, path:Ljava/lang/String;
    sget-boolean v2, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v2, :cond_0

    .line 275
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    return-object v0
.end method

.method public static getLeftSpace()J
    .locals 5

    .prologue
    .line 365
    sget-object v2, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 366
    .local v0, left:J
    sget-boolean v2, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v2, :cond_0

    .line 367
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLeftSpace() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    sget-object v2, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMountPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static getSize(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 66
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getStorageManager()Landroid/os/storage/StorageManager;
    .locals 3

    .prologue
    .line 124
    sget-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/storage/StorageManager;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    .line 127
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 128
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHaveExternalSDCard()Z
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 165
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 166
    .local v2, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 167
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mounted"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v3, 0x1

    .line 172
    :goto_1
    return v3

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isMultiStorage()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 159
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 160
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    array-length v3, v1

    if-le v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSDCard()Z
    .locals 9

    .prologue
    .line 135
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 137
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    sget-object v4, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 138
    .local v4, storagePath:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 139
    .local v5, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v2, -0x1

    .line 140
    .local v2, nVolume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 141
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 142
    move v2, v0

    .line 146
    :cond_0
    const/4 v1, 0x0

    .line 147
    .local v1, isSd:Z
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 148
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    .line 150
    :cond_1
    sget-boolean v6, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v6, :cond_2

    .line 151
    const-string v6, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSDCard() storagePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    return v1

    .line 140
    .end local v1           #isSd:Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isStorageReady()Z
    .locals 3

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStorageReady() mount point = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/Storage;->sStorageReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    sget-boolean v0, Lcom/android/camera/Storage;->sStorageReady:Z

    return v0
.end method

.method public static setLeftSpace(J)V
    .locals 3
    .parameter "left"

    .prologue
    .line 373
    sget-object v0, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 374
    sget-boolean v0, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftSpace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    return-void
.end method

.method public static setStorageReady(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 238
    sget-boolean v0, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorageReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sStorageReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/Storage;->sStorageReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    sput-boolean p0, Lcom/android/camera/Storage;->sStorageReady:Z

    .line 242
    return-void
.end method

.method public static updateDefaultDirectory()Z
    .locals 12

    .prologue
    .line 245
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v7

    .line 246
    .local v7, storageManager:Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, defaultPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 248
    .local v1, diff:Z
    sget-object v5, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 249
    .local v5, old:Ljava/lang/String;
    sput-object v0, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 250
    if-eqz v5, :cond_0

    sget-object v9, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    const/4 v1, 0x1

    .line 253
    :cond_0
    const/4 v9, 0x3

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .line 258
    .local v8, types:[I
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v8

    .local v4, len:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 259
    new-instance v2, Ljava/io/File;

    aget v9, v8, v3

    invoke-static {v9}, Lcom/android/camera/Storage;->getFileDirectory(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    .end local v2           #dir:Ljava/io/File;
    :cond_1
    sget-object v9, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, state:Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 264
    sget-boolean v9, Lcom/android/camera/Storage;->LOG:Z

    if-eqz v9, :cond_2

    .line 265
    const-string v9, "CameraStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateDefaultDirectory() old="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sMountPoint="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_2
    return v1

    .line 253
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static updateSaveLocationSharedPreferences(Landroid/content/Context;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/android/camera/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "com.baidu.camera_preferences"
    
    const/4 v2, 0x1
    
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    
    move-result-object v0
    
    sput-object v0, Lcom/android/camera/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/android/camera/Storage;->sBaiduPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "/storage/sdcard0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "phone"

    :goto_0
    invoke-static {v0, v2}, Lcom/android/camera/Storage;->writBaiduPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    
    return-void
 
    :cond_1
    const-string v2, "phone"

    goto :goto_0

    :cond_2
    const-string v2, "sdcard"

    goto :goto_0
.end method

.method public static writBaiduPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 786
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 787
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_storage_path_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 789
    return-void
.end method
