.class public abstract Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;
.super Ljava/lang/Object;
.source "ExternalDeviceManagerBase.java"

# interfaces
.implements Lcom/mediatek/common/externaldisplay/IExternalDeviceManager;


# instance fields
.field protected mOnDeviceScanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnErrorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnStatusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnErrorListeners:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnInfoListeners:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStatusChangeListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addConnectStateChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addDeviceScanListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEnableStatusChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStatusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addErrorListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addInfoListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeConnectStateChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnConnectStateChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeDeviceScanListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnDeviceScanListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnDeviceScanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeEnableStatusChangeListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnEnableStatusChangeListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnStatusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeErrorListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnErrorListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnErrorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeInfoListener(Lcom/mediatek/common/externaldisplay/IExternalDeviceManager$OnInfoListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/common/externaldisplay/ExternalDeviceManagerBase;->mOnInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
