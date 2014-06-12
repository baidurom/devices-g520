.class Lcom/mediatek/gallery3d/video/VideoSettingsActivity$1;
.super Ljava/lang/Object;
.source "VideoSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/VideoSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/VideoSettingsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/video/VideoSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity$1;->this$0:Lcom/mediatek/gallery3d/video/VideoSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichItemSelect"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/VideoSettingsActivity$1;->this$0:Lcom/mediatek/gallery3d/video/VideoSettingsActivity;

    invoke-virtual {v0, p2}, Lcom/mediatek/gallery3d/video/VideoSettingsActivity;->setSelectedStepOption(I)V

    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    return-void
.end method
