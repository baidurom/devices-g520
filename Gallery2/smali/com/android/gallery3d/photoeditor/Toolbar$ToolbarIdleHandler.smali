.class Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
.super Ljava/lang/Object;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToolbarIdleHandler"
.end annotation


# static fields
.field private static final MAKE_IDLE:I = 0x1

.field private static final TIMEOUT_IDLE:I = 0x1f40


# instance fields
.field private final fadeIn:Landroid/view/animation/Animation;

.field private final fadeOut:Landroid/view/animation/Animation;

.field private idle:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, tools:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    .line 131
    const v0, 0x7f050003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    .line 132
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    .line 133
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public killIdle()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 137
    const-string v2, "Toolbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "killIdle() idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 143
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 146
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->mainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    return-void
.end method

.method public syncViewIdle(Z)V
    .locals 5
    .parameter "viewIdle"

    .prologue
    .line 151
    const-string v2, "Toolbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncViewIdle("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 154
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->tools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 155
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
