.class Lcom/mediatek/wfd/WfdService$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Lcom/mediatek/wfd/WfdAddonService$Listener;


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
    .line 127
    iput-object p1, p0, Lcom/mediatek/wfd/WfdService$1;->this$0:Lcom/mediatek/wfd/WfdService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectTimeout()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mediatek/wfd/WfdService$1;->this$0:Lcom/mediatek/wfd/WfdService;

    #calls: Lcom/mediatek/wfd/WfdService;->onTimeout()V
    invoke-static {v0}, Lcom/mediatek/wfd/WfdService;->access$000(Lcom/mediatek/wfd/WfdService;)V

    .line 130
    return-void
.end method
