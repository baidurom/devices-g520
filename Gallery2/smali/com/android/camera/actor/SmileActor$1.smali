.class Lcom/android/camera/actor/SmileActor$1;
.super Ljava/lang/Object;
.source "SmileActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 37
    invoke-static {}, Lcom/android/camera/actor/SmileActor;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "SmileActor"

    const-string v1, "mCancelListener.onClick()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doCancelCapture()Z

    .line 41
    return-void
.end method
