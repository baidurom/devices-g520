.class Landroid/mtp/MtpDatabase$MtpDatabaseThread$1;
.super Landroid/os/Handler;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase$MtpDatabaseThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/mtp/MtpDatabase$MtpDatabaseThread;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase$MtpDatabaseThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread$1;->this$1:Landroid/mtp/MtpDatabase$MtpDatabaseThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1344
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1357
    :goto_0
    return-void

    .line 1347
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1348
    .local v1, path:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1349
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1352
    const-string/jumbo v2, "scan_child_files_only"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1354
    iget-object v2, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread$1;->this$1:Landroid/mtp/MtpDatabase$MtpDatabaseThread;

    #getter for: Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->access$000(Landroid/mtp/MtpDatabase$MtpDatabaseThread;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
