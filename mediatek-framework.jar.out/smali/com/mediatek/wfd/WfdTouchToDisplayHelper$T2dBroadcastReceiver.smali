.class Lcom/mediatek/wfd/WfdTouchToDisplayHelper$T2dBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdTouchToDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdTouchToDisplayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "T2dBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdTouchToDisplayHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdTouchToDisplayHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper$T2dBroadcastReceiver;->this$0:Lcom/mediatek/wfd/WfdTouchToDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v2, "mediatek.nfc.handover.intent.action.WFD_ACTIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v1, Lcom/mediatek/wfd/T2dExtra;

    invoke-direct {v1}, Lcom/mediatek/wfd/T2dExtra;-><init>()V

    .line 81
    .local v1, ex:Lcom/mediatek/wfd/T2dExtra;
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_MAC_ADDR"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->macAddr:[B

    .line 82
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_VENDOR_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->vendorId:[B

    .line 83
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_GC_IP"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->gcIp:[B

    .line 84
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_GO_IP"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->goIp:[B

    .line 85
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_MAX_HEIGHT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->maxHeight:[B

    .line 86
    const-string v2, "mediatek.nfc.handover.intent.extra.WFD_MAX_WIDTH"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfd/T2dExtra;->maxWidth:[B

    .line 88
    .end local v1           #ex:Lcom/mediatek/wfd/T2dExtra;
    :cond_0
    return-void
.end method
