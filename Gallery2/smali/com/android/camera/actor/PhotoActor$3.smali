.class Lcom/android/camera/actor/PhotoActor$3;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$3;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 244
    invoke-static {}, Lcom/android/camera/actor/PhotoActor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "PhotoActor"

    const-string v1, "mCancelListener.onClick()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$3;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->doCancel()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$700(Lcom/android/camera/actor/PhotoActor;)V

    .line 248
    return-void
.end method
