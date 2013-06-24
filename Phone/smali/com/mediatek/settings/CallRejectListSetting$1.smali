.class Lcom/mediatek/settings/CallRejectListSetting$1;
.super Ljava/lang/Object;
.source "CallRejectListSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/CallRejectListSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallRejectListSetting;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CallRejectListSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->dismissDialog(I)V

    .line 416
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    #getter for: Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/settings/CallRejectListSetting;->access$400(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    #getter for: Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/settings/CallRejectListSetting;->access$400(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    #getter for: Lcom/mediatek/settings/CallRejectListSetting;->mType:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/settings/CallRejectListSetting;->access$500(Lcom/mediatek/settings/CallRejectListSetting;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    #getter for: Lcom/mediatek/settings/CallRejectListSetting;->mNumberEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/mediatek/settings/CallRejectListSetting;->access$400(Lcom/mediatek/settings/CallRejectListSetting;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/CallRejectListSetting;->allWhite(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/CallRejectListSetting;->access$600(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, rejectNumbers:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    iget-object v2, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    invoke-virtual {v2}, Lcom/mediatek/settings/CallRejectListSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/settings/CallRejectListSetting;->insertNumbers(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/settings/CallRejectListSetting;->access$700(Lcom/mediatek/settings/CallRejectListSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/mediatek/settings/CallRejectListSetting$1;->this$0:Lcom/mediatek/settings/CallRejectListSetting;

    #calls: Lcom/mediatek/settings/CallRejectListSetting;->showNumbers()V
    invoke-static {v1}, Lcom/mediatek/settings/CallRejectListSetting;->access$200(Lcom/mediatek/settings/CallRejectListSetting;)V

    goto :goto_0
.end method
