.class Lcom/mediatek/phone/vt/VTInCallScreen$9;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1622
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1900(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #getter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1900(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1624
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1902(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1626
    :cond_0
    if-nez p2, :cond_2

    .line 1628
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : VTManager.getInstance().setNightMode(true);"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1631
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setNightMode(Z)V

    .line 1632
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1800(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1641
    :cond_1
    :goto_0
    return-void

    .line 1633
    :cond_2
    if-ne v2, p2, :cond_1

    .line 1635
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : VTManager.getInstance().setNightMode(false);"

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V

    .line 1638
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setNightMode(Z)V

    .line 1639
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen$9;->this$0:Lcom/mediatek/phone/vt/VTInCallScreen;

    #calls: Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V
    invoke-static {v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->access$1800(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    goto :goto_0
.end method
