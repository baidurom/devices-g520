.class Lcom/mediatek/activity/MessageActivity$1;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/mediatek/activity/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/activity/MessageActivity$1;->this$0:Lcom/mediatek/activity/MessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/activity/MessageActivity$1;->this$0:Lcom/mediatek/activity/MessageActivity;

    invoke-virtual {v0}, Lcom/mediatek/activity/MessageActivity;->finish()V

    .line 106
    return-void
.end method
