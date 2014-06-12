.class public Lcom/android/camera/manager/ShutterManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ShutterManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field public static final SHUTTER_TYPE_CANCEL:I = 0x4

.field public static final SHUTTER_TYPE_CANCEL_VIDEO:I = 0x5

.field public static final SHUTTER_TYPE_OK_CANCEL:I = 0x3

.field public static final SHUTTER_TYPE_PHOTO:I = 0x1

.field public static final SHUTTER_TYPE_PHOTO_VIDEO:I = 0x0

.field public static final SHUTTER_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShutterManager"


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mCancelButtonEnabled:Z

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mFullScreen:Z

.field private mOkButton:Landroid/view/View;

.field private mOklistener:Landroid/view/View$OnClickListener;

.field private mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

.field private mPhotoShutterEnabled:Z

.field private mShutterType:I

.field private mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mVideoShutter:Lcom/android/camera/ui/ShutterButton;

.field private mVideoShutterEnabled:Z

.field private mVideoShutterMasked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 28
    iput v1, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    .line 37
    iput-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ShutterManager;->setFileter(Z)V

    .line 50
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 51
    return-void
.end method

.method private applyListener()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_3
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_4

    .line 119
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyListener() mPhotoShutter=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mVideoShutter=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mOkButton=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCancelButton=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    return-void
.end method


# virtual methods
.method public getPhotoShutter()Lcom/android/camera/ui/ShutterButton;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    return-object v0
.end method

.method public getShutterType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    return v0
.end method

.method public getVideoShutter()Lcom/android/camera/ui/ShutterButton;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, view:Landroid/view/View;
    const v0, 0x7f04000e

    .line 57
    .local v0, layoutId:I
    iget v2, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    packed-switch v2, :pswitch_data_0

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ShutterManager;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 77
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 78
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 79
    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    .line 80
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    .line 81
    invoke-direct {p0}, Lcom/android/camera/manager/ShutterManager;->applyListener()V

    .line 82
    return-object v1

    .line 59
    :pswitch_0
    const v0, 0x7f04000e

    .line 60
    goto :goto_0

    .line 62
    :pswitch_1
    const v0, 0x7f04000d

    .line 63
    goto :goto_0

    .line 65
    :pswitch_2
    const v0, 0x7f04000f

    .line 66
    goto :goto_0

    .line 68
    :pswitch_3
    const v0, 0x7f04000c

    .line 69
    goto :goto_0

    .line 71
    :pswitch_4
    const v0, 0x7f04000b

    .line 72
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isCancelButtonEnabled()Z
    .locals 3

    .prologue
    .line 251
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCancelButtonEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    return v0
.end method

.method public isPhotoShutterEnabled()Z
    .locals 3

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhotoShutterEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    return v0
.end method

.method public isVideoShutterEnabled()Z
    .locals 3

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoShutterEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    return v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 276
    return-void
.end method

.method public onRefresh()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    sget-boolean v4, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "ShutterManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRefresh() mPhotoShutterEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFullScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isEnabled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v5

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lcom/android/camera/ModeChecker;->getModePickerVisible(Lcom/android/camera/Camera;II)Z

    move-result v1

    .line 161
    .local v1, visible:Z
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 163
    .local v0, enabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ShutterButton;->setEnabled(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ShutterButton;->setClickable(Z)V

    .line 165
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterMasked:Z

    if-eqz v4, :cond_6

    .line 166
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    const v5, 0x7f020030

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ShutterButton;->setImageResource(I)V

    .line 171
    .end local v0           #enabled:Z
    .end local v1           #visible:Z
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v4, :cond_2

    .line 172
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_7

    move v0, v2

    .line 173
    .restart local v0       #enabled:Z
    :goto_2
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ShutterButton;->setEnabled(Z)V

    .line 174
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/ShutterButton;->setClickable(Z)V

    .line 176
    .end local v0           #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_8

    move v0, v2

    .line 178
    .restart local v0       #enabled:Z
    :goto_3
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 181
    .end local v0           #enabled:Z
    :cond_3
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 182
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_9

    move v0, v2

    .line 183
    .restart local v0       #enabled:Z
    :goto_4
    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 187
    .end local v0           #enabled:Z
    :cond_4
    return-void

    .restart local v1       #visible:Z
    :cond_5
    move v0, v3

    .line 161
    goto :goto_0

    .line 168
    .restart local v0       #enabled:Z
    :cond_6
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    const v5, 0x7f02002f

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ShutterButton;->setImageResource(I)V

    goto :goto_1

    .end local v0           #enabled:Z
    .end local v1           #visible:Z
    :cond_7
    move v0, v3

    .line 172
    goto :goto_2

    :cond_8
    move v0, v3

    .line 177
    goto :goto_3

    :cond_9
    move v0, v3

    .line 182
    goto :goto_4
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_3
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 100
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 101
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    .line 102
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    .line 103
    return-void
.end method

.method public performPhotoShutter()Z
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, performed:Z
    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->performClick()Z

    .line 202
    const/4 v0, 0x1

    .line 204
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "ShutterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performPhotoShutter() mPhotoShutter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    return v0
.end method

.method public setCancelButtonEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 243
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancelButtonEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 248
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 270
    return-void
.end method

.method public setPhotoShutterEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 212
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhotoShutterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 217
    return-void
.end method

.method public setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "photoListener"
    .parameter "videoListener"
    .parameter "okListener"
    .parameter "cancelListener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 131
    iput-object p2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 132
    iput-object p3, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    .line 133
    iput-object p4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 134
    invoke-direct {p0}, Lcom/android/camera/manager/ShutterManager;->applyListener()V

    .line 135
    return-void
.end method

.method public setVideoShutterEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 227
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShutterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 232
    return-void
.end method

.method public setVideoShutterMask(Z)V
    .locals 3
    .parameter "mask"

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShutterMask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterMasked:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->refresh()V

    .line 263
    return-void
.end method

.method public switchShutter(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/camera/manager/ShutterManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchShutterType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mShutterType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    if-eq v0, p1, :cond_1

    .line 142
    iput p1, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/manager/ShutterManager;->reInflate()V

    .line 145
    :cond_1
    return-void
.end method
