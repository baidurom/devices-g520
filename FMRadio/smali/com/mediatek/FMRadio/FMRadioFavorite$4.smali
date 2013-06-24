.class Lcom/mediatek/FMRadio/FMRadioFavorite$4;
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
    .line 449
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 452
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->deleteChannel()V

    .line 453
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 454
    .local v1, mCurrent:I
    const-string v2, "FmRx/Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATION_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$4;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v2, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
