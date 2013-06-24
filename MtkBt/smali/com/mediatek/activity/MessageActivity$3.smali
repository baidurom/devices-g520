.class Lcom/mediatek/activity/MessageActivity$3;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/activity/MessageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/activity/MessageActivity;

.field final synthetic val$positiveIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/activity/MessageActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/activity/MessageActivity$3;->this$0:Lcom/mediatek/activity/MessageActivity;

    iput-object p2, p0, Lcom/mediatek/activity/MessageActivity$3;->val$positiveIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/activity/MessageActivity$3;->this$0:Lcom/mediatek/activity/MessageActivity;

    iget-object v1, p0, Lcom/mediatek/activity/MessageActivity$3;->val$positiveIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/mediatek/activity/MessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/activity/MessageActivity$3;->this$0:Lcom/mediatek/activity/MessageActivity;

    invoke-virtual {v0}, Lcom/mediatek/activity/MessageActivity;->finish()V

    .line 119
    return-void
.end method
