.class public Lcom/android/camera/FeatureSwitcher;
.super Ljava/lang/Object;
.source "FeatureSwitcher.java"


# static fields
.field private static final CAMERA_PHASE_II_ENABLED:Ljava/lang/String; = "PhaseII_Enabled"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "FeatureSwitcher"

.field private static final VIDEO_LIVE_EFFECT_ENABLED:Ljava/lang/String; = "Live_Effect_Enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContinuousFocusEnabledWhenTouch()Z
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isContinuousFocusEnabledWhenTouch() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return v0
.end method

.method public static isHdRecordingEnabled()Z
    .locals 4

    .prologue
    .line 18
    const/4 v0, 0x1

    .line 19
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHdRecordingEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return v0
.end method

.method public static isPanoramaEnabled()Z
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPanoramaEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return v0
.end method

.method public static isPhaseIIEnabled()Z
    .locals 4

    .prologue
    .line 35
    const-string v1, "PhaseII_Enabled"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 36
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 37
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhaseIIEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return v0
.end method

.method public static isSlideEnabled()Z
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x1

    .line 64
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSlideEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return v0
.end method

.method public static isStereo3dEnable()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public static isStereoSingle3d()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public static isThemeEnabled()Z
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x1

    .line 80
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isThemeEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return v0
.end method

.method public static isVideoLiveEffectEnabled()Z
    .locals 4

    .prologue
    .line 44
    const-string v1, "Live_Effect_Enabled"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 45
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhaseIIEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return v0
.end method

.method public static isVssEnabled()Z
    .locals 4

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 12
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVssEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return v0
.end method

.method public static isWfdEnabled()Z
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, enabled:Z
    sget-boolean v1, Lcom/android/camera/FeatureSwitcher;->LOG:Z

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "FeatureSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWfdEnabled() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return v0
.end method
