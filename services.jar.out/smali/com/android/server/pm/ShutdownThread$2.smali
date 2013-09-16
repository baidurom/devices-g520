.class final Lcom/android/server/pm/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->createQbShutdownConfirmDialog(Landroid/content/Context;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$2;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 179
    invoke-static {p2}, Lcom/android/server/pm/ShutdownThread;->access$102(Z)Z

    .line 180
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$100()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/pm/ShutdownThread;->access$202(Z)Z

    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$2;->val$text:Landroid/widget/TextView;

    const v1, -0xaba8a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$2;->val$text:Landroid/widget/TextView;

    const v1, -0x4d4c48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
