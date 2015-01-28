.class public Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoCallbackImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1167
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1170
    return-void
.end method

.method public onDownloadCalibrationDataUpdate(Z)V
    .locals 0
    .parameter "calibrationData"

    .prologue
    .line 1179
    return-void
.end method

.method public onLockScreenUpdate(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 1176
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1161
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1149
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1155
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1158
    return-void
.end method

.method public onSIMInfoChanged(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 1164
    return-void
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 0
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    .line 1173
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1185
    return-void
.end method
