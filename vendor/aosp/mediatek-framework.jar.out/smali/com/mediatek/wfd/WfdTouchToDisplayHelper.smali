.class public Lcom/mediatek/wfd/WfdTouchToDisplayHelper;
.super Ljava/lang/Object;
.source "WfdTouchToDisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfd/WfdTouchToDisplayHelper$T2dBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_NFC_WFD_GC_IP:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_GC_IP"

.field public static final EXTRA_NFC_WFD_GO_IP:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_GO_IP"

.field public static final EXTRA_NFC_WFD_MAC_ADDR:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAC_ADDR"

.field public static final EXTRA_NFC_WFD_MAX_HEIGHT:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAX_HEIGHT"

.field public static final EXTRA_NFC_WFD_MAX_WIDTH:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_MAX_WIDTH"

.field public static final EXTRA_NFC_WFD_VENDOR_ID:Ljava/lang/String; = "mediatek.nfc.handover.intent.extra.WFD_VENDOR_ID"

.field static final NFC_HANDOVER_INTENT_ACTION_WFD_ACTIVE:Ljava/lang/String; = "mediatek.nfc.handover.intent.action.WFD_ACTIVE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper$T2dBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/wfd/WfdTouchToDisplayHelper$T2dBroadcastReceiver;-><init>(Lcom/mediatek/wfd/WfdTouchToDisplayHelper;)V

    iput-object v0, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iget-object v0, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "mediatek.nfc.handover.intent.action.WFD_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/wfd/WfdTouchToDisplayHelper;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method
