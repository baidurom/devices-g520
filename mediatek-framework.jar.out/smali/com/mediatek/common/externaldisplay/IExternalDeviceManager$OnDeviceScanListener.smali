.class public interface abstract Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;
.super Ljava/lang/Object;
.source "IExternalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/externaldisplay/IExternalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceScanListener"
.end annotation


# virtual methods
.method public abstract onDeviceFound(Lcom/mediatek/common/externaldisplay/ExternalDevice;)V
.end method

.method public abstract onDeviceScanFinish()V
.end method

.method public abstract onDeviceScanStart()V
.end method
