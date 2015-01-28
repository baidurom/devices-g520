.class Lcom/android/camera/Camera$22;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/LocationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
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
    .line 2899
    iput-object p1, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2924
    :goto_0
    return-void

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 2
    .parameter "hasSignal"

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2914
    :goto_0
    return-void

    .line 2907
    :cond_0
    if-eqz p1, :cond_1

    .line 2908
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2913
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2910
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera$22;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mGpsIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$5700(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
