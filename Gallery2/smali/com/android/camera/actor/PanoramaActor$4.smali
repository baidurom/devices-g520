.class Lcom/android/camera/actor/PanoramaActor$4;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$4;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$4;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->onKeyPressed(Z)V

    .line 169
    return-void
.end method
