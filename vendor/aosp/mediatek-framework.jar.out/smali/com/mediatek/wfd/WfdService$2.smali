.class Lcom/mediatek/wfd/WfdService$2;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Lcom/mediatek/wfd/t2d/WfdT2dServiceAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onT2dConnectFail()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "WfdService"

    const-string v1, "T2d mode connect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$302(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 148
    return-void
.end method

.method public onT2dConnecting(Ljava/lang/String;)V
    .locals 3
    .parameter "desiredMac"

    .prologue
    .line 151
    const-string v0, "WfdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T2d mode connecting, desiredMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x2

    #setter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$102(Lcom/mediatek/wfd/WfdService;I)I

    .line 153
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/wfd/WfdService;->mNeedFastRtsp:Z
    invoke-static {v0, v1}, Lcom/mediatek/wfd/WfdService;->access$302(Lcom/mediatek/wfd/WfdService;Z)Z

    .line 154
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    #setter for: Lcom/mediatek/wfd/WfdService;->mDesiredMac:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/wfd/WfdService;->access$402(Lcom/mediatek/wfd/WfdService;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    return-void
.end method

.method public onT2dRequestReceived()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    const-string v2, "WfdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onT2dRequestReceived(): mConnectState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v4}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mConnectState:I
    invoke-static {v2}, Lcom/mediatek/wfd/WfdService;->access$100(Lcom/mediatek/wfd/WfdService;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 137
    const-string v2, "WfdService"

    const-string v3, "Disable auto-connect for T2D"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/mediatek/wfd/WfdService$2;->this$0:Lcom/mediatek/wfd/WfdService;

    #getter for: Lcom/mediatek/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/wfd/WfdService;->access$200(Lcom/mediatek/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wfd_auto_connect_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
