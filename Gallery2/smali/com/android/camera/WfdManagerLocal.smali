.class public Lcom/android/camera/WfdManagerLocal;
.super Ljava/lang/Object;
.source "WfdManagerLocal.java"

# interfaces
.implements Lcom/android/camera/Camera$Resumable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/WfdManagerLocal$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "com.mediatek.wfd.ORIENTATION_LANDSCAPE"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WfdManagerLocal"


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/WfdManagerLocal$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumed:Z

.field private mWfdManager:Lcom/mediatek/wfd/WfdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/camera/WfdManagerLocal$1;

    invoke-direct {v0, p0}, Lcom/android/camera/WfdManagerLocal$1;-><init>(Lcom/android/camera/WfdManagerLocal;)V

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    .line 40
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addResumable(Lcom/android/camera/Camera$Resumable;)Z

    .line 41
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/WfdManagerLocal;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V

    return-void
.end method

.method private notifyWfdStateChanged(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 70
    sget-boolean v2, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "WfdManagerLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWfdStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/WfdManagerLocal$Listener;

    .line 74
    .local v1, listener:Lcom/android/camera/WfdManagerLocal$Listener;
    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v1, p1}, Lcom/android/camera/WfdManagerLocal$Listener;->onStateChanged(Z)V

    goto :goto_0

    .line 78
    .end local v1           #listener:Lcom/android/camera/WfdManagerLocal$Listener;
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public begin()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "WfdManagerLocal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() mWfdManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/mediatek/wfd/WfdManager;->destroy()V

    .line 92
    :cond_1
    return-void
.end method

.method public isWfdEnabled()Z
    .locals 4

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, enabled:Z
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isWfdEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/mediatek/wfd/WfdManager;

    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    invoke-direct {v1, v2}, Lcom/mediatek/wfd/WfdManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mWfdManager:Lcom/mediatek/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/mediatek/wfd/WfdManager;->isConnected()Z

    move-result v0

    .line 51
    :cond_1
    sget-boolean v1, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    if-eqz v1, :cond_2

    .line 52
    const-string v1, "WfdManagerLocal"

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

    .line 54
    :cond_2
    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "WfdManagerLocal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    .line 103
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/android/camera/WfdManagerLocal$Listener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/WfdManagerLocal;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 107
    sget-boolean v1, Lcom/android/camera/WfdManagerLocal;->LOG:Z

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "WfdManagerLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume() mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isWfdEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    if-nez v1, :cond_1

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.wfd.ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/camera/WfdManagerLocal;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/WfdManagerLocal;->mResumed:Z

    .line 116
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method
