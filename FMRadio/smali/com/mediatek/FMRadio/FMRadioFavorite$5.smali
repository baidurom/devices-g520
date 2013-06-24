.class Lcom/mediatek/FMRadio/FMRadioFavorite$5;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioFavorite.ACTION_HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->finish()V

    .line 482
    return-void
.end method
