.class Lcom/android/gallery3d/ui/MenuExecutor$2;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/MenuExecutor;->clickStereoPhoto(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;

.field final synthetic val$menuAction:I

.field final synthetic val$menuListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$menuAction:I

    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$menuListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 637
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 640
    const v0, 0x7f0b0108

    iget v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$menuAction:I

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->startCropIntent()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/MenuExecutor;->access$800(Lcom/android/gallery3d/ui/MenuExecutor;)V

    .line 647
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$menuAction:I

    const v2, 0x7f0c0090

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor$2;->val$menuListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 646
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
