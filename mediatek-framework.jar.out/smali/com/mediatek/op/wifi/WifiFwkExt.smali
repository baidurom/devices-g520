.class public Lcom/mediatek/op/wifi/WifiFwkExt;
.super Ljava/lang/Object;
.source "WifiFwkExt.java"

# interfaces
.implements Lcom/mediatek/common/wifi/IWifiFwkExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultWifiSleepPolicy()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    return v0
.end method

.method public shouldStartWifiAtAirplaneMode()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
