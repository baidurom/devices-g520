.class Lcom/android/camera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->applyParameterForCapture(Lcom/android/camera/SaveRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$request:Lcom/android/camera/SaveRequest;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/SaveRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$8;->val$request:Lcom/android/camera/SaveRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1691
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mCameraId:I
    invoke-static {v2}, Lcom/android/camera/Camera;->access$1600(Lcom/android/camera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v0

    .line 1692
    .local v0, jpegRotation:I
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1693
    iget-object v2, p0, Lcom/android/camera/Camera$8;->val$request:Lcom/android/camera/SaveRequest;

    invoke-interface {v2, v0}, Lcom/android/camera/SaveRequest;->setJpegRotation(I)V

    .line 1694
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mLocationManager:Lcom/android/camera/LocationManager;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 1695
    .local v1, loc:Landroid/location/Location;
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1696
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$8;->val$request:Lcom/android/camera/SaveRequest;

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setCapturePath(Ljava/lang/String;)V

    .line 1698
    iget-object v2, p0, Lcom/android/camera/Camera$8;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 1699
    return-void
.end method
