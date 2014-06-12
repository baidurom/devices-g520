.class Lcom/android/camera/Camera$10;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->cancelContinuousShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mSettingChecker:Lcom/android/camera/SettingChecker;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->disableContinuousShot()V

    .line 1718
    iget-object v0, p0, Lcom/android/camera/Camera$10;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 1719
    return-void
.end method
