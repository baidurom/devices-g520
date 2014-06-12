.class Lcom/android/camera/manager/SettingManager$1;
.super Landroid/os/Handler;
.source "SettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/SettingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/SettingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 67
    invoke-static {}, Lcom/android/camera/manager/SettingManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    #getter for: Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/camera/manager/SettingManager;->access$100(Lcom/android/camera/manager/SettingManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    #getter for: Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/camera/manager/SettingManager;->access$100(Lcom/android/camera/manager/SettingManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager$1;->this$0:Lcom/android/camera/manager/SettingManager;

    #getter for: Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/camera/manager/SettingManager;->access$100(Lcom/android/camera/manager/SettingManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
