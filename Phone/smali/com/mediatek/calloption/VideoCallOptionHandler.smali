.class public abstract Lcom/mediatek/calloption/VideoCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "VideoCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallOptionHandler"


# instance fields
.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "VideoCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 8
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    .line 56
    const-string v1, "handleRequest()"

    invoke-static {v1}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 59
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.phone.extra.video"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->is3GSwitchSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIM(Lcom/mediatek/calloption/Request;)I

    move-result v7

    .line 68
    .local v7, slot:I
    :goto_1
    const/4 v1, -0x1

    if-ne v1, v7, :cond_4

    .line 69
    const/4 v2, 0x1

    .line 70
    .local v2, isInsertSim:Z
    invoke-static {p1, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const/4 v2, 0x0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/calloption/VideoCallOptionHandler;->showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .end local v2           #isInsertSim:Z
    .end local v7           #slot:I
    :cond_3
    move v7, v0

    .line 66
    goto :goto_1

    .line 76
    .restart local v7       #slot:I
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    move-result-object v6

    .line 79
    .local v6, simStatusHandler:Lcom/mediatek/calloption/SimStatusCallOptionHandler;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/FinalCallOptionHandler;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 80
    invoke-virtual {v6, p1}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 105
    const-string v0, "onCancel()"

    invoke-static {v0}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onHandlingFinish()V

    .line 107
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(), which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 91
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.Modem3GCapabilitySwitch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v1, -0x2

    if-ne v1, p2, :cond_0

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 101
    const-string v0, "onDismiss()"

    invoke-static {v0}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected abstract showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
