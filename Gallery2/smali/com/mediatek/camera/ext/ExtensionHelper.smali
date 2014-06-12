.class public Lcom/mediatek/camera/ext/ExtensionHelper;
.super Ljava/lang/Object;
.source "ExtensionHelper.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "ExtensionHelper"

.field private static sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

.field private static sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureCameraExtension(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 33
    sget-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    if-nez v1, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/camera/ext/ICameraExtension;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {v1, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/camera/ext/ICameraExtension;

    sput-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    const-string v1, "ExtensionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCameraExtension() sCameraExtension="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v1, Lcom/mediatek/camera/ext/CameraExtension;

    invoke-direct {v1}, Lcom/mediatek/camera/ext/CameraExtension;-><init>()V

    sput-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    .line 39
    const-string v1, "ExtensionHelper"

    const-string v2, "ensureCameraExtension()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;
    .locals 3

    .prologue
    .line 25
    sget-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please call ensureCameraExtension before getFeatureExtension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    sget-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    invoke-interface {v1}, Lcom/mediatek/camera/ext/ICameraExtension;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v0

    .line 29
    .local v0, feature:Lcom/mediatek/camera/ext/IFeatureExtension;
    return-object v0
.end method

.method public static getPathPicker()Lcom/mediatek/camera/ext/ISavingPath;
    .locals 3

    .prologue
    .line 17
    sget-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please call ensureCameraExtension before getPathPicker"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_0
    sget-object v1, Lcom/mediatek/camera/ext/ExtensionHelper;->sCameraExtension:Lcom/mediatek/camera/ext/ICameraExtension;

    invoke-interface {v1}, Lcom/mediatek/camera/ext/ICameraExtension;->getSavingPath()Lcom/mediatek/camera/ext/ISavingPath;

    move-result-object v0

    .line 21
    .local v0, pathPicker:Lcom/mediatek/camera/ext/ISavingPath;
    return-object v0
.end method

.method public static showAppGuide(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 48
    const-string v1, "CAMERA"

    .line 49
    .local v1, type:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

    if-nez v2, :cond_0

    .line 51
    :try_start_0
    const-class v2, Lcom/mediatek/camera/ext/IAppGuideExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/camera/ext/IAppGuideExt;

    sput-object v2, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    sget-object v2, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

    if-eqz v2, :cond_1

    .line 58
    sget-object v2, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

    const-string v3, "CAMERA"

    invoke-interface {v2, p0, v3}, Lcom/mediatek/camera/ext/IAppGuideExt;->showCameraGuide(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    :cond_1
    const-string v2, "ExtensionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAppGuide() sAppGuideExt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    new-instance v2, Lcom/mediatek/camera/ext/AppGuideExt;

    invoke-direct {v2}, Lcom/mediatek/camera/ext/AppGuideExt;-><init>()V

    sput-object v2, Lcom/mediatek/camera/ext/ExtensionHelper;->sAppGuideExt:Lcom/mediatek/camera/ext/IAppGuideExt;

    .line 54
    const-string v2, "ExtensionHelper"

    const-string v3, "showAppGuide()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
