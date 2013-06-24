.class Lcom/mediatek/settings/NetworkSettingList$4;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkSettingList;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, networkInfoArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "notifying message loop of query completion."

    #calls: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mSimId:I
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$1000(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 287
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void

    .line 283
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$4;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    #getter for: Lcom/mediatek/settings/NetworkSettingList;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/settings/NetworkSettingList;->access$1000(Lcom/mediatek/settings/NetworkSettingList;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method
