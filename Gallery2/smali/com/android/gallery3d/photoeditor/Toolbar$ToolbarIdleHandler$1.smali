.class Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;
.super Landroid/os/Handler;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

.field final synthetic val$tools:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->val$tools:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 116
    const-string v2, "Toolbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$200(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :cond_0
    return-void

    .line 120
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$200(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    const/4 v3, 0x1

    #setter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->idle:Z
    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$202(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;Z)Z

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->val$tools:Ljava/util/List;

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

    .line 123
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->fadeOut:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->access$300(Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
