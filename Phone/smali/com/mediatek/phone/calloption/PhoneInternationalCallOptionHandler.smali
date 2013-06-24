.class public Lcom/mediatek/phone/calloption/PhoneInternationalCallOptionHandler;
.super Lcom/mediatek/calloption/InternationalCallOptionHandler;
.source "PhoneInternationalCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneInternationalCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/calloption/InternationalCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    const-string v0, "PhoneInternationalCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method


# virtual methods
.method protected showDialog(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "dialogType"
    .parameter "prefixInfo"
    .parameter "clickListener"
    .parameter "dismissListener"
    .parameter "cancelListener"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 59
    :cond_0
    new-instance v1, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;

    invoke-direct {v1, p1, p2, p3}, Lcom/mediatek/phone/calloption/PhoneInternationalDialogHandler;-><init>(Landroid/content/Context;ILcom/mediatek/calloption/InternationalDialogHandler$PrefixInfo;)V

    iput-object v1, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d0159

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0168

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v2}, Lcom/mediatek/calloption/InternationalDialogHandler;->createDialogView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    .line 65
    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Lcom/mediatek/calloption/InternationalDialogHandler;->setAlertDialog(Landroid/app/AlertDialog;)V

    .line 66
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 69
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 70
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 71
    return-void
.end method

.method protected showInvalidNumberDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "clickListener"
    .parameter "dismissListener"
    .parameter "cancelListener"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 80
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/calloption/InternationalCallOptionHandler;->mDialogHandler:Lcom/mediatek/calloption/InternationalDialogHandler;

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d016a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    .line 88
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 91
    return-void
.end method
