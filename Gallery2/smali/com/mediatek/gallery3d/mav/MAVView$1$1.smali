.class Lcom/mediatek/gallery3d/mav/MAVView$1$1;
.super Ljava/lang/Object;
.source "MAVView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/mav/MAVView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/gallery3d/mav/MAVView$1;

.field final synthetic val$scrollX:I


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/mav/MAVView$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/mediatek/gallery3d/mav/MAVView$1$1;->this$1:Lcom/mediatek/gallery3d/mav/MAVView$1;

    iput p2, p0, Lcom/mediatek/gallery3d/mav/MAVView$1$1;->val$scrollX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/mediatek/gallery3d/mav/MAVView$1$1;->this$1:Lcom/mediatek/gallery3d/mav/MAVView$1;

    iget-object v0, v0, Lcom/mediatek/gallery3d/mav/MAVView$1;->this$0:Lcom/mediatek/gallery3d/mav/MAVView;

    iget v1, p0, Lcom/mediatek/gallery3d/mav/MAVView$1$1;->val$scrollX:I

    #calls: Lcom/mediatek/gallery3d/mav/MAVView;->scrollDeltaDistance(I)V
    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/mav/MAVView;->access$400(Lcom/mediatek/gallery3d/mav/MAVView;I)V

    .line 469
    return-void
.end method
