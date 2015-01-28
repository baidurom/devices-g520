.class public interface abstract Lcom/mediatek/common/externaldisplay/IExternalDeviceManager;
.super Ljava/lang/Object;
.source "IExternalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;,
        Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;,
        Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;,
        Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;,
        Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;
    }
.end annotation


# static fields
.field public static final DEVICE_ERROR_TIMEOUT:I = 0x65

.field public static final DEVICE_ERROR_UNKNOWN:I = 0x64

.field public static final DEVICE_STATE_CONNECTED:I = 0x3

.field public static final DEVICE_STATE_CONNECTING:I = 0x2

.field public static final DEVICE_STATE_DISCONNECTING:I = 0x5

.field public static final DEVICE_STATE_IDLE:I = 0x1

.field public static final DEVICE_STATE_INTERRUPTTED:I = 0x4

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final DEVICE_STATUS_DISABLED:I = 0x0

.field public static final DEVICE_STATUS_DISABLING:I = 0x2

.field public static final DEVICE_STATUS_ENABLED:I = 0x1

.field public static final DEVICE_STATUS_ENABLING:I = 0x3

.field public static final DEVICE_SUBTYPE_DONGLE:I = 0x2

.field public static final DEVICE_SUBTYPE_SINK:I = 0x4

.field public static final DEVICE_SUBTYPE_SOURCE:I = 0x1

.field public static final DEVICE_SUBTYPE_UNKNOWN:I = -0x1

.field public static final DEVICE_TYPE_HDMI_DISPLAY:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I = -0x1

.field public static final DEVICE_TYPE_WIFI_DISPLAY:I = 0x1

.field public static final OPERATION_TYPE_CANCEL_SCAN:I = 0x4

.field public static final OPERATION_TYPE_CONNECT:I = 0x1

.field public static final OPERATION_TYPE_DISCONNECT:I = 0x2

.field public static final OPERATION_TYPE_SCAN:I = 0x3

.field public static final RESULT_DUPLICATE:I = 0x1

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNSUPPORTED:I = 0x2


# virtual methods
.method public abstract addConnectStateChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;)Z
.end method

.method public abstract addDeviceScanListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;)Z
.end method

.method public abstract addEnableStatusChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;)Z
.end method

.method public abstract addErrorListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;)Z
.end method

.method public abstract addInfoListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;)Z
.end method

.method public abstract cancelScan()I
.end method

.method public abstract connect(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract destroy()V
.end method

.method public abstract disable(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract disconnect(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract emGetBitrateConrol()I
.end method

.method public abstract emGetConfiguration()I
.end method

.method public abstract emSetBitrateConrol(I)V
.end method

.method public abstract emSetConfiguration(I)V
.end method

.method public abstract enable(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract getConnectedDevice()Lcom/mediatek/common/externaldisplay/ExternalDevice;
.end method

.method public abstract getEnableStatus(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract getScannedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/ExternalDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract interrupt(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract isAutoConnectEnabled()Z
.end method

.method public abstract isAutoScanEnabled()Z
.end method

.method public abstract isScanning()Z
.end method

.method public abstract isSupported(I)Z
.end method

.method public abstract removeConnectStateChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;)Z
.end method

.method public abstract removeDeviceScanListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;)Z
.end method

.method public abstract removeEnableStatusChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;)Z
.end method

.method public abstract removeErrorListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;)Z
.end method

.method public abstract removeInfoListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;)Z
.end method

.method public abstract restore(Lcom/mediatek/common/externaldisplay/ExternalDevice;)I
.end method

.method public abstract scan()I
.end method

.method public abstract setAutoConnectStatus(Z)I
.end method

.method public abstract setAutoScanStatus(Z)I
.end method
