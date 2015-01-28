.class Lcom/android/camera/manager/ZoomManager$MyListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ZoomManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/manager/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/manager/ZoomManager;Lcom/android/camera/manager/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager$MyListener;-><init>(Lcom/android/camera/manager/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDoubleTap("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mZoomIndexFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAppSupported()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEnabled()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    :cond_1
    const/4 v2, 0x0

    .line 231
    :goto_0
    return v2

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$700(Lcom/android/camera/manager/ZoomManager;)I

    move-result v4

    #calls: Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I
    invoke-static {v3, v4}, Lcom/android/camera/manager/ZoomManager;->access$800(Lcom/android/camera/manager/ZoomManager;I)I

    move-result v0

    .line 223
    .local v0, oldIndex:I
    const/4 v1, 0x0

    .line 224
    .local v1, zoomIndex:I
    if-nez v0, :cond_3

    .line 225
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndex()I
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$900(Lcom/android/camera/manager/ZoomManager;)I

    move-result v1

    .line 226
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$1000(Lcom/android/camera/manager/ZoomManager;)F

    move-result v4

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v3, v4}, Lcom/android/camera/manager/ZoomManager;->access$502(Lcom/android/camera/manager/ZoomManager;F)F

    .line 230
    :goto_1
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V
    invoke-static {v3, v1, v2}, Lcom/android/camera/manager/ZoomManager;->access$1100(Lcom/android/camera/manager/ZoomManager;IZ)V

    goto :goto_0

    .line 228
    :cond_3
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    const/high16 v4, 0x3f80

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v3, v4}, Lcom/android/camera/manager/ZoomManager;->access$502(Lcom/android/camera/manager/ZoomManager;F)F

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 166
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z
    invoke-static {v0, v1}, Lcom/android/camera/manager/ZoomManager;->access$302(Lcom/android/camera/manager/ZoomManager;Z)Z

    .line 174
    return-void
.end method

.method public onFling(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$400(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onScale(FFF)Z
    .locals 7
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 236
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScale("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mZoomIndexFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAppSupported()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEnabled()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v1, v2

    .line 257
    :cond_2
    :goto_0
    return v1

    .line 243
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_5
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-static {v2, p3}, Lcom/android/camera/manager/ZoomManager;->access$532(Lcom/android/camera/manager/ZoomManager;F)F

    .line 247
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v2

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_7

    .line 248
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v6}, Lcom/android/camera/manager/ZoomManager;->access$502(Lcom/android/camera/manager/ZoomManager;F)F

    .line 252
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    #calls: Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I
    invoke-static {v2, v3}, Lcom/android/camera/manager/ZoomManager;->access$800(Lcom/android/camera/manager/ZoomManager;I)I

    move-result v0

    .line 253
    .local v0, zoomIndex:I
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/manager/ZoomManager;->access$1100(Lcom/android/camera/manager/ZoomManager;IZ)V

    .line 254
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale() mZoomIndexFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v0           #zoomIndex:I
    :cond_7
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$1000(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 250
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$1000(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v3}, Lcom/android/camera/manager/ZoomManager;->access$502(Lcom/android/camera/manager/ZoomManager;F)F

    goto :goto_1
.end method

.method public onScaleBegin(FF)Z
    .locals 4
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBegin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #setter for: Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z
    invoke-static {v0, v3}, Lcom/android/camera/manager/ZoomManager;->access$302(Lcom/android/camera/manager/ZoomManager;Z)Z

    .line 267
    return v3
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "ZoomManager"

    const-string v1, "onScaleEnd()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$400(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUp()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    .line 211
    :cond_0
    return-void
.end method
