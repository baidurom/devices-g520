.class public Lcom/mediatek/phone/calloption/PhoneVideoCallOptionHandler;
.super Lcom/mediatek/calloption/VideoCallOptionHandler;
.source "PhoneVideoCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneVideoCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/calloption/VideoCallOptionHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    const-string v0, "PhoneVideoCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method protected showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 7
    .parameter "request"
    .parameter "isInsertSim"
    .parameter "clickListener"
    .parameter "dismissListener"
    .parameter "cancelListener"

    .prologue
    const v6, 0x7f0d0097

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_1

    .line 58
    const-class v2, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 60
    .local v1, serviceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IServiceStateExt;->isImeiLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0d01b3

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    .end local v1           #serviceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    .line 74
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 76
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 77
    return-void

    .line 60
    .restart local v1       #serviceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    const v2, 0x7f0d01ab

    goto :goto_0

    .line 68
    .end local v1           #serviceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d001c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
