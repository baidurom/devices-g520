.class public Lcom/mediatek/camera/ext/CameraExtension;
.super Ljava/lang/Object;
.source "CameraExtension.java"

# interfaces
.implements Lcom/mediatek/camera/ext/ICameraExtension;


# instance fields
.field private mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

.field private mSavingPath:Lcom/mediatek/camera/ext/ISavingPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/mediatek/camera/ext/FeatureExtension;

    invoke-direct {v0}, Lcom/mediatek/camera/ext/FeatureExtension;-><init>()V

    iput-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mFeatureExtension:Lcom/mediatek/camera/ext/IFeatureExtension;

    return-object v0
.end method

.method public getSavingPath()Lcom/mediatek/camera/ext/ISavingPath;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mSavingPath:Lcom/mediatek/camera/ext/ISavingPath;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/mediatek/camera/ext/SavingPath;

    invoke-direct {v0}, Lcom/mediatek/camera/ext/SavingPath;-><init>()V

    iput-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mSavingPath:Lcom/mediatek/camera/ext/ISavingPath;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mediatek/camera/ext/CameraExtension;->mSavingPath:Lcom/mediatek/camera/ext/ISavingPath;

    return-object v0
.end method
