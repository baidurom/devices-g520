.class Lcom/android/internal/telephony/cat/CatService$2;
.super Landroid/database/ContentObserver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService$2;->onChange(ZLandroid/net/Uri;)V

    .line 1663
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v4, 0x2

    .line 1633
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1638
    .local v0, seqValue:I
    if-ne v0, v4, :cond_1

    .line 1640
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1641
    const-string/jumbo v1, "send DISPLAY_TEXT to app"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/cat/CatService;->sendCatCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->access$800(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1643
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->access$702(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1647
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #calls: Lcom/android/internal/telephony/cat/CatService;->unregisterPowerOnSequenceObserver()V
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$900(Lcom/android/internal/telephony/cat/CatService;)V

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    if-nez v0, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mCachedDisplayTextCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$600(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
