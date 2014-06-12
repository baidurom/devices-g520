.class Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;
.super Ljava/lang/Object;
.source "MAVView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/mav/MAVView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectifySensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/mav/MAVView;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MAVView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 83
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MAVView;->access$000(Lcom/mediatek/gallery3d/mav/MAVView;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 76
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MAVView;->access$000(Lcom/mediatek/gallery3d/mav/MAVView;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 77
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView$RectifySensorListener;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    #getter for: Lcom/mediatek/gallery3d/mav/MAVView;->mRectifyValue:[F
    invoke-static {v0}, Lcom/mediatek/gallery3d/mav/MAVView;->access$000(Lcom/mediatek/gallery3d/mav/MAVView;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 78
    return-void
.end method
