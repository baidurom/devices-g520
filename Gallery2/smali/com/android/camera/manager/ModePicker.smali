.class public Lcom/android/camera/manager/ModePicker;
.super Lcom/android/camera/manager/ViewManager;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ModePicker$OnModeChangedListener;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_HIDE_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final MODE_ASD:I = 0x5

.field public static final MODE_FACE_BEAUTY:I = 0x2

.field public static final MODE_HDR:I = 0x1

.field private static final MODE_ICONS_HIGHTLIGHT:[I = null

.field private static final MODE_ICONS_NORMAL:[I = null

.field public static final MODE_MAV:I = 0x4

.field public static final MODE_NUM_ALL:I = 0xc

.field public static final MODE_NUM_ICON:I = 0x8

.field public static final MODE_PANORAMA:I = 0x3

.field public static final MODE_PANORAMA_SINGLE_3D:I = 0xcb

.field public static final MODE_PHOTO:I = 0x0

.field public static final MODE_PHOTO_3D:I = 0x64

.field public static final MODE_PHOTO_SGINLE_3D:I = 0xc8

.field public static final MODE_SMILE_SHOT:I = 0x6

.field public static final MODE_VIDEO:I = 0x7

.field public static final MODE_VIDEO_3D:I = 0x6b

.field private static final OFFSET:I = 0x64

.field private static final OFFSET_STEREO_PREVIEW:I = 0x64

.field private static final OFFSET_STEREO_SINGLE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ModePicker"


# instance fields
.field private mCurrentMode:I

.field private mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

.field private mModeToast:Lcom/android/camera/manager/OnScreenToast;

.field private final mModeViews:[Lcom/android/camera/ui/RotateImageView;

.field private mScrollView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 15
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ModePicker;->LOG:Z

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0xb2t 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 54
    :array_1
    .array-data 0x4
        0xb3t 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 64
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    .line 72
    return-void
.end method

.method private applyListener()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    return-void
.end method

.method private clearListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method private highlightCurrentMode()V
    .locals 4

    .prologue
    .line 99
    iget v2, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v1

    .line 100
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 101
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 102
    if-ne v0, v1, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 109
    :cond_2
    return-void
.end method

.method private notifyModeChanged()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getCurrentMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/manager/ModePicker$OnModeChangedListener;->onModeChanged(I)V

    .line 191
    :cond_0
    return-void
.end method

.method private setRealMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    .line 81
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->highlightCurrentMode()V

    .line 82
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->notifyModeChanged()V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    return v0
.end method

.method public getModeIndex(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 112
    rem-int/lit8 v0, p1, 0x64

    .line 113
    .local v0, index:I
    sget-boolean v1, Lcom/android/camera/manager/ModePicker;->LOG:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "ModePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModeIndex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->clearListener()V

    .line 126
    const v1, 0x7f040021

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ModePicker;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 129
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x1

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 130
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x2

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 131
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x3

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 132
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x4

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 133
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x5

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 134
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v3, 0x6

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    aput-object v1, v2, v3

    .line 135
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->applyListener()V

    .line 136
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->highlightCurrentMode()V

    .line 137
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 161
    sget-boolean v1, Lcom/android/camera/manager/ModePicker;->LOG:Z

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "ModePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view.isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_3

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 176
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    if-nez v1, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/manager/OnScreenToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenToast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v1}, Lcom/android/camera/manager/OnScreenToast;->showToast()V

    .line 185
    :cond_2
    return-void

    .line 167
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0           #i:I
    :cond_4
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/manager/OnScreenToast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/camera/manager/ModePicker;->LOG:Z

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 194
    iget v1, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    .line 195
    .local v1, mode:I
    const/4 v3, 0x0

    .line 196
    .local v3, visibleCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 197
    iget-object v4, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v7

    invoke-static {v4, v7, v0}, Lcom/android/camera/ModeChecker;->getModePickerVisible(Lcom/android/camera/Camera;II)Z

    move-result v2

    .line 201
    .local v2, visible:Z
    iget-object v4, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v7, v4, v0

    if-eqz v2, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v4

    if-ne v0, v4, :cond_0

    if-nez v2, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 205
    :cond_0
    if-eqz v2, :cond_1

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 196
    .end local v2           #visible:Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v2       #visible:Z
    :cond_2
    move v4, v6

    .line 201
    goto :goto_1

    .line 210
    .end local v2           #visible:Z
    :cond_3
    const/4 v4, 0x1

    if-gt v3, v4, :cond_4

    .line 211
    iget-object v4, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 216
    return-void

    .line 213
    :cond_4
    iget-object v4, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setCurrentMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v0

    .line 88
    .local v0, realmode:I
    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    add-int/lit16 v0, v0, 0xc8

    .line 95
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/manager/ModePicker;->setRealMode(I)V

    .line 96
    return-void

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateImageView;->setClickable(Z)V

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/ModePicker$OnModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    .line 121
    return-void
.end method
