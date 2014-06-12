.class public Lcom/android/camera/manager/IndicatorManager;
.super Lcom/android/camera/manager/ViewManager;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnParametersReadyListener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;


# static fields
.field private static final FROM_PARAMETERS:[Z = null

.field private static final INDICATOR_COUNT:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final ROW_EXPOSURE:I = 0x2

.field private static final ROW_SCENE_MODE:I = 0x1

.field private static final ROW_SELF_TIME:I = 0x4

.field private static final ROW_TIME_LAPSE:I = 0x3

.field private static final ROW_WHITE_BALANCE:I = 0x0

.field private static final SETTING_ROWS:[I = null

.field private static final TAG:Ljava/lang/String; = "IndicatorManager"

.field private static final VIEW_IDS:[I


# instance fields
.field private mDefaults:[Ljava/lang/String;

.field private mIndicatorGroup:Landroid/view/View;

.field private mLastSceneMode:Ljava/lang/String;

.field private mOverrides:[Ljava/lang/String;

.field private mPreferenceReady:Z

.field private mPrefs:[Lcom/android/camera/ListPreference;

.field private mViews:[Lcom/android/camera/ui/RotateImageView;

.field private mVisibles:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 19
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/IndicatorManager;->LOG:Z

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->VIEW_IDS:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    .line 36
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->FROM_PARAMETERS:[Z

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0x44t 0x0t 0xbt 0x7ft
        0x43t 0x0t 0xbt 0x7ft
        0x45t 0x0t 0xbt 0x7ft
        0x46t 0x0t 0xbt 0x7ft
        0x47t 0x0t 0xbt 0x7ft
    .end array-data

    .line 29
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 49
    new-array v0, v1, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    .line 50
    new-array v0, v1, [Lcom/android/camera/ListPreference;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    .line 52
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/manager/IndicatorManager;->setAnimationEnabled(ZZ)V

    .line 64
    return-void
.end method

.method private initializeIndicatorVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 162
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    if-nez v3, :cond_2

    .line 163
    new-array v3, v4, [Z

    iput-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 165
    const/4 v2, 0x1

    .line 166
    .local v2, visible:Z
    sget-object v3, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v1, v3, v0

    .line 167
    .local v1, row:I
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    sget-object v3, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    invoke-static {v3, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v2

    .line 172
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    aput-boolean v2, v3, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    sget-object v3, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    invoke-static {v3, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v2

    goto :goto_1

    .line 175
    .end local v0           #i:I
    .end local v1           #row:I
    .end local v2           #visible:Z
    :cond_2
    return-void
.end method


# virtual methods
.method public getIndicatorVisible(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/camera/manager/IndicatorManager;->initializeIndicatorVisible()V

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, visible:Z
    iget-object v1, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    aget-boolean v0, v1, p1

    .line 155
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/IndicatorManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "IndicatorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIndicatorVisible("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 68
    const v2, 0x7f040024

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/IndicatorManager;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    sget-object v2, Lcom/android/camera/manager/IndicatorManager;->VIEW_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    .line 73
    return-object v1
.end method

.method public onCameraParameterReady()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "why not preference has not been initialized?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->refresh()V

    .line 92
    return-void
.end method

.method public onDetectedSceneMode(I)V
    .locals 8
    .parameter "scene"

    .prologue
    const/4 v7, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, asdModeMapping:Landroid/content/res/TypedArray;
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, sceneMode:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v3, v4, v7

    check-cast v3, Lcom/android/camera/IconListPreference;

    .line 203
    .local v3, scenePref:Lcom/android/camera/IconListPreference;
    if-nez v3, :cond_0

    .line 204
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "why not call initialize firstly?"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v4

    sget-object v5, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v4

    sget-object v5, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, prefValue:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v4, v4, v7

    if-eqz v4, :cond_2

    .line 210
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/camera/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v7

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->notifyPreferenceChanged()V

    .line 223
    .end local v1           #prefValue:Ljava/lang/String;
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/camera/manager/IndicatorManager;->LOG:Z

    if-eqz v4, :cond_3

    .line 224
    const-string v4, "IndicatorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDetectedSceneMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") override="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sceneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    return-void

    .line 214
    :cond_4
    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getOriginalEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/camera/SettingUtils;->contains([Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 216
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aput-object v2, v4, v7

    .line 218
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->refresh()V

    goto :goto_0

    .line 221
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "native mapping array has error!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onPreferenceReady()V
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 78
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 79
    sget-object v4, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v3, v4, v1

    .line 80
    .local v3, row:I
    sget-object v4, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v4, v3

    .line 81
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    aput-object v5, v4, v1

    .line 82
    iget-object v4, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/SettingChecker;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #row:I
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    .line 85
    return-void
.end method

.method public onRefresh()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x7

    .line 96
    iget-boolean v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    :cond_0
    const-string v6, "IndicatorManager"

    const-string v7, "onRefresh() why refresh before preference ready? "

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v4, 0x0

    .line 101
    .local v4, showcount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v6, 0x5

    if-ge v0, v6, :cond_b

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/camera/manager/IndicatorManager;->getIndicatorVisible(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_3
    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v3, v6, v0

    .line 106
    .local v3, row:I
    const/4 v5, 0x0

    .line 107
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_6

    .line 108
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v5, v6, v0

    .line 116
    :goto_3
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/android/camera/IconListPreference;

    if-eqz v6, :cond_5

    .line 117
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 118
    :cond_4
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 137
    :cond_5
    :goto_4
    sget-boolean v6, Lcom/android/camera/manager/IndicatorManager;->LOG:Z

    if-eqz v6, :cond_2

    .line 138
    const-string v6, "IndicatorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRefresh() i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", row["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", view="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", override="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", showcount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 109
    :cond_6
    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->FROM_PARAMETERS:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_7

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/SettingChecker;->getParameterValue(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 120
    :cond_8
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 122
    if-ne v9, v3, :cond_9

    sget v6, Lcom/android/camera/SettingChecker;->mMode:I

    if-ne v9, v6, :cond_9

    .line 123
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 127
    :cond_9
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v1, v6, v0

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 128
    .local v1, iconPref:Lcom/android/camera/IconListPreference;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getOriginalIconIds()[I

    move-result-object v6

    if-eqz v6, :cond_a

    .line 131
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getOriginalEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    .line 132
    .local v2, index:I
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getOriginalIconIds()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 134
    .end local v2           #index:I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 142
    .end local v1           #iconPref:Lcom/android/camera/IconListPreference;
    .end local v3           #row:I
    .end local v5           #value:Ljava/lang/String;
    :cond_b
    if-lez v4, :cond_c

    .line 143
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    const v7, 0x7f020004

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 145
    :cond_c
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public restoreSceneMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v2

    sget-object v3, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, curScene:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mLastSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v1, v2, v4

    .line 189
    .local v1, scenePref:Lcom/android/camera/ListPreference;
    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->notifyPreferenceChanged()V

    .line 193
    .end local v1           #scenePref:Lcom/android/camera/ListPreference;
    :cond_0
    return-void
.end method

.method public saveSceneMode()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/camera/manager/IndicatorManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    sget-object v1, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mLastSceneMode:Ljava/lang/String;

    .line 180
    sget-boolean v0, Lcom/android/camera/manager/IndicatorManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "IndicatorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSceneMode() mLastSceneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mLastSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void
.end method
