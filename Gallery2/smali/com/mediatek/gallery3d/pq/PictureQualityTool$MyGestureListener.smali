.class Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PictureQualityTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/pq/PictureQualityTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;->this$0:Lcom/mediatek/gallery3d/pq/PictureQualityTool;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;Lcom/mediatek/gallery3d/pq/PictureQualityTool$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/pq/PictureQualityTool$MyGestureListener;-><init>(Lcom/mediatek/gallery3d/pq/PictureQualityTool;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 749
    const-string v0, "PictureQualityTool"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 763
    const-string v0, "PictureQualityTool"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 756
    const-string v0, "PictureQualityTool"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 770
    const-string v0, "PictureQualityTool"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v0, 0x0

    return v0
.end method
