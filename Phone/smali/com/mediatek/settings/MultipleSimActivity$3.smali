.class Lcom/mediatek/settings/MultipleSimActivity$3;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/MultipleSimActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 616
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 617
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v2, "aspectX"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    const-string v2, "aspectY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    const-string v2, "outputX"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v3}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v2, "outputY"

    iget-object v3, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v3}, Lcom/mediatek/settings/MultipleSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    const-string v2, "scaleUpIfNeeded"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v3, 0xbcd

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/settings/MultipleSimActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/mediatek/settings/MultipleSimActivity$3;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v3, "Pictrue not found , Gallery ActivityNotFoundException !"

    #calls: Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
