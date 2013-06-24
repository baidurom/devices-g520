.class Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;Lcom/mediatek/FMRadio/FMRadioFavorite$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, mValueHeadSetPlug:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mIsFavoriteForeground:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogNoAntenna:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->onBackPressed()V

    .line 138
    .end local v1           #mValueHeadSetPlug:I
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v1       #mValueHeadSetPlug:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->showDialog(I)V

    goto :goto_0
.end method
