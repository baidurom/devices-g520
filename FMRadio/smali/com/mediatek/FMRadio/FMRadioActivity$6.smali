.class Lcom/mediatek/FMRadio/FMRadioActivity$6;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$6;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogInput:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1943
    return-void
.end method
