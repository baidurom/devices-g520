.class Lcom/mediatek/activity/MessageActivity$2;
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


# direct methods
.method constructor <init>(Lcom/mediatek/activity/MessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/activity/MessageActivity$2;->this$0:Lcom/mediatek/activity/MessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/activity/MessageActivity$2;->this$0:Lcom/mediatek/activity/MessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    return-void
.end method
