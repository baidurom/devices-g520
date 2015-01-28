.class public Lcom/android/camera/manager/ReviewManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ReviewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "ReviewManager"


# instance fields
.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mOrientationCompensation:I

.field private mPlayView:Lcom/android/camera/ui/RotateImageView;

.field private mRetakeView:Lcom/android/camera/ui/RotateImageView;

.field private mReviewBitmap:Landroid/graphics/Bitmap;

.field private mReviewImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 38
    const v1, 0x7f040047

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mPlayView:Lcom/android/camera/ui/RotateImageView;

    .line 40
    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mRetakeView:Lcom/android/camera/ui/RotateImageView;

    .line 41
    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mReviewImage:Landroid/widget/ImageView;

    .line 42
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mPlayView:Lcom/android/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mPlayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mRetakeView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mPlayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-object v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mPlayView:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, listener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/camera/manager/ReviewManager;->mRetakeView:Lcom/android/camera/ui/RotateImageView;

    if-ne v1, p1, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getRetakeListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 63
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 66
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "ReviewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->getPlayListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0
.end method

.method protected onRefresh()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    sget-boolean v3, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    if-eqz v3, :cond_0

    .line 74
    const-string v3, "ReviewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefresh() mFileDescriptor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ReviewManager;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ReviewManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", OrientationCompensation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/manager/ReviewManager;->mOrientationCompensation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mReviewBitmap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 84
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 87
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 88
    .local v0, info:[Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    aget-object v3, v0, v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_4

    .line 89
    .local v1, mirror:Z
    :goto_1
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/camera/manager/ReviewManager;->mOrientationCompensation:I

    neg-int v4, v4

    invoke-static {v3, v4, v1}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 90
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .end local v0           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v1           #mirror:Z
    :cond_2
    return-void

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .restart local v0       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_4
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method public setOrientationCompensation(I)V
    .locals 3
    .parameter "orientationCompensation"

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "ReviewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationCompensation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iput p1, p0, Lcom/android/camera/manager/ReviewManager;->mOrientationCompensation:I

    .line 118
    return-void
.end method

.method public show(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ReviewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mReviewBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/camera/manager/ReviewManager;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 102
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/camera/manager/ReviewManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "ReviewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mReviewBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/android/camera/manager/ReviewManager;->mFilePath:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ReviewManager;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 111
    return-void
.end method
