.class public Lcom/android/camera/manager/PickerManager;
.super Lcom/android/camera/manager/ViewManager;
.source "PickerManager.java"

# interfaces
.implements Lcom/android/camera/ui/PickerButton$Listener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;
.implements Lcom/android/camera/Camera$OnParametersReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/PickerManager$PickerListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PickerManager"


# instance fields
.field private mCameraPicker:Lcom/android/camera/ui/PickerButton;

.field private mFlashPicker:Lcom/android/camera/ui/PickerButton;

.field private mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

.field private mNeedUpdate:Z

.field private mPreferenceReady:Z

.field private mStereoPicker:Lcom/android/camera/ui/PickerButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/PickerManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 37
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 38
    return-void
.end method

.method private applyListeners()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 60
    :cond_2
    sget-boolean v0, Lcom/android/camera/manager/PickerManager;->LOG:Z

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "PickerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyListeners() mFlashPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStereoPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    return-void
.end method

.method private clearListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/PickerManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    .line 44
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    .line 45
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    .line 46
    invoke-direct {p0}, Lcom/android/camera/manager/PickerManager;->applyListeners()V

    .line 47
    return-object v0
.end method

.method public onCameraParameterReady()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/camera/manager/PickerManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "PickerManager"

    const-string v1, "onCameraParameterReady()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 105
    :cond_3
    return-void
.end method

.method public onPicked(Lcom/android/camera/ui/PickerButton;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "button"
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, picked:Z
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-ne v1, p1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/manager/PickerManager$PickerListener;->onCameraPicked(I)Z

    move-result v0

    .line 119
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/camera/manager/PickerManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "PickerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPicked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    return v0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-ne v1, p1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-interface {v1, p3}, Lcom/android/camera/manager/PickerManager$PickerListener;->onFlashPicked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-ne v1, p1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/camera/manager/PickerManager$PickerListener;->onStereoPicked(Z)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPreferenceReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    sget-boolean v0, Lcom/android/camera/manager/PickerManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "PickerManager"

    const-string v1, "onPreferenceReady()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/manager/PickerManager;->mPreferenceReady:Z

    .line 89
    return-void
.end method

.method public onRefresh()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 133
    iget-boolean v3, p0, Lcom/android/camera/manager/PickerManager;->mPreferenceReady:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/manager/PickerManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 135
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v1, v3, v4

    .line 136
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 137
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v1, v3, v6

    .line 138
    iget-object v6, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 139
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v6, 0x2d

    aget-object v1, v3, v6

    .line 140
    iget-object v6, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/IconListPreference;

    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 141
    iput-boolean v4, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 143
    .end local v0           #group:Lcom/android/camera/PreferenceGroup;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v3}, Lcom/android/camera/ui/PickerButton;->updateView()V

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/manager/PickerManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/ModeChecker;->getCameraPickerVisible(Lcom/android/camera/Camera;)Z

    move-result v2

    .line 148
    .local v2, visible:Z
    iget-object v6, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/camera/ui/PickerButton;->setVisibility(I)V

    .line 150
    .end local v2           #visible:Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/manager/PickerManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/ModeChecker;->getStereoPickerVisibile(Lcom/android/camera/Camera;)Z

    move-result v2

    .line 152
    .restart local v2       #visible:Z
    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v2, :cond_5

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/camera/ui/PickerButton;->setVisibility(I)V

    .line 154
    .end local v2           #visible:Z
    :cond_3
    return-void

    .restart local v2       #visible:Z
    :cond_4
    move v3, v5

    .line 148
    goto :goto_0

    :cond_5
    move v4, v5

    .line 152
    goto :goto_1
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 160
    return-void
.end method

.method public setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setValue(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setClickable(Z)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setClickable(Z)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/PickerButton;->setClickable(Z)V

    .line 179
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/PickerManager$PickerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    .line 80
    return-void
.end method
