.class public Lcom/android/camera/ModeChecker;
.super Ljava/lang/Object;
.source "ModeChecker.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MATRIX_NORMAL_ENABLE:[[Z = null

.field private static final MATRIX_PREVIEW3D_ENABLE:[[Z = null

.field private static final MATRIX_SINGLE3D_ENABLE:[[Z = null

.field private static final TAG:Ljava/lang/String; = "ModeChecker"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 7
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ModeChecker;->LOG:Z

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [[Z

    sput-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 15
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    .line 16
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    .line 17
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    .line 18
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v4, [Z

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isPhaseIIEnabled()Z

    move-result v2

    aput-boolean v2, v1, v5

    aput-boolean v5, v1, v6

    aput-object v1, v0, v7

    .line 19
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    new-array v1, v4, [Z

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isPhaseIIEnabled()Z

    move-result v2

    aput-boolean v2, v1, v5

    aput-boolean v5, v1, v6

    aput-object v1, v0, v8

    .line 20
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v4, [Z

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isPhaseIIEnabled()Z

    move-result v3

    aput-boolean v3, v2, v5

    aput-boolean v5, v2, v6

    aput-object v2, v0, v1

    .line 21
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v4, [Z

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isPhaseIIEnabled()Z

    move-result v3

    aput-boolean v3, v2, v5

    aput-boolean v5, v2, v6

    aput-object v2, v0, v1

    .line 22
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v4, [Z

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    .line 24
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    .line 25
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    .line 26
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    .line 27
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_7

    aput-object v1, v0, v7

    .line 28
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_8

    aput-object v1, v0, v8

    .line 29
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v4, [Z

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    .line 30
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v4, [Z

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    .line 31
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v4, [Z

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    .line 33
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    .line 34
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    .line 35
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_e

    aput-object v1, v0, v4

    .line 36
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    .line 37
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    new-array v1, v4, [Z

    fill-array-data v1, :array_10

    aput-object v1, v0, v8

    .line 38
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x5

    new-array v2, v4, [Z

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x6

    new-array v2, v4, [Z

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    const/4 v1, 0x7

    new-array v2, v4, [Z

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    .line 41
    return-void

    .line 15
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 17
    nop

    :array_2
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 22
    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 24
    nop

    :array_4
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 25
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 26
    nop

    :array_6
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 27
    nop

    :array_7
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 28
    nop

    :array_8
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 29
    nop

    :array_9
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 30
    nop

    :array_a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 31
    nop

    :array_b
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 33
    nop

    :array_c
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 34
    nop

    :array_d
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 35
    nop

    :array_e
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 36
    nop

    :array_f
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 37
    nop

    :array_10
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 38
    nop

    :array_11
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 39
    nop

    :array_12
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 40
    nop

    :array_13
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraPickerVisible(Lcom/android/camera/Camera;)Z
    .locals 9
    .parameter "camera"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraCount()I

    move-result v0

    .line 67
    .local v0, cameranum:I
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 85
    :goto_0
    return v6

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    .line 71
    .local v3, mode:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v4

    .line 73
    .local v4, stereo:Z
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    .line 74
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 80
    .local v2, matrix:[[Z
    :goto_1
    rem-int/lit8 v1, v3, 0x64

    .line 81
    .local v1, index:I
    aget-object v7, v2, v1

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4

    aget-object v7, v2, v1

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_4

    .line 82
    .local v5, visible:Z
    :goto_2
    sget-boolean v6, Lcom/android/camera/ModeChecker;->LOG:Z

    if-eqz v6, :cond_1

    .line 83
    const-string v6, "ModeChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCameraPickerVisible("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v6, v5

    .line 85
    goto :goto_0

    .line 75
    .end local v1           #index:I
    .end local v2           #matrix:[[Z
    .end local v5           #visible:Z
    :cond_2
    if-eqz v4, :cond_3

    .line 76
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_1

    .line 78
    .end local v2           #matrix:[[Z
    :cond_3
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .restart local v2       #matrix:[[Z
    goto :goto_1

    .restart local v1       #index:I
    :cond_4
    move v5, v6

    .line 81
    goto :goto_2
.end method

.method public static getModePickerVisible(Lcom/android/camera/Camera;II)Z
    .locals 7
    .parameter "camera"
    .parameter "cameraId"
    .parameter "mode"

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, visible:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v2

    .line 92
    .local v2, stereo:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v4

    if-nez v4, :cond_4

    .line 94
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 95
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 101
    .local v1, matrix:[[Z
    :goto_0
    rem-int/lit8 v0, p2, 0x64

    .line 102
    .local v0, index:I
    aget-object v4, v1, v0

    aget-boolean v3, v4, p1

    .line 106
    .end local v0           #index:I
    .end local v1           #matrix:[[Z
    :cond_0
    :goto_1
    sget-boolean v4, Lcom/android/camera/ModeChecker;->LOG:Z

    if-eqz v4, :cond_1

    .line 107
    const-string v4, "ModeChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModePickerVisible("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    return v3

    .line 96
    :cond_2
    if-eqz v2, :cond_3

    .line 97
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v1       #matrix:[[Z
    goto :goto_0

    .line 99
    .end local v1           #matrix:[[Z
    :cond_3
    sget-object v1, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    .restart local v1       #matrix:[[Z
    goto :goto_0

    .line 103
    .end local v1           #matrix:[[Z
    :cond_4
    const/4 v4, 0x7

    if-eq v4, p2, :cond_5

    const/16 v4, 0x6b

    if-ne v4, p2, :cond_0

    .line 104
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static getStereoPickerVisibile(Lcom/android/camera/Camera;)Z
    .locals 8
    .parameter "camera"

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereo3dEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    :goto_0
    return v5

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 48
    .local v4, visible:Z
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    .line 49
    .local v3, mode:I
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v0

    .line 51
    .local v0, cameraId:I
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_SINGLE3D_ENABLE:[[Z

    .line 57
    .local v2, matrix3d:[[Z
    :goto_1
    rem-int/lit8 v1, v3, 0x64

    .line 58
    .local v1, index:I
    aget-object v6, v2, v1

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/camera/ModeChecker;->MATRIX_NORMAL_ENABLE:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 59
    :goto_2
    sget-boolean v5, Lcom/android/camera/ModeChecker;->LOG:Z

    if-eqz v5, :cond_1

    .line 60
    const-string v5, "ModeChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStereoPickerVisibile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v5, v4

    .line 62
    goto :goto_0

    .line 54
    .end local v1           #index:I
    .end local v2           #matrix3d:[[Z
    :cond_2
    sget-object v2, Lcom/android/camera/ModeChecker;->MATRIX_PREVIEW3D_ENABLE:[[Z

    .restart local v2       #matrix3d:[[Z
    goto :goto_1

    .restart local v1       #index:I
    :cond_3
    move v4, v5

    .line 58
    goto :goto_2
.end method
