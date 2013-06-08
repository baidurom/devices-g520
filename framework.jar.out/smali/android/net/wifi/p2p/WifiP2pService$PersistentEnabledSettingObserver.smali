.class Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistentEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 3527
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    .line 3528
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3529
    return-void
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3546
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wfd_auto_connect_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 3540
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3542
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWfdAutoConnectEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$4302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 3543
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 3532
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3533
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wfd_auto_connect_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3535
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$PersistentEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Landroid/net/wifi/p2p/WifiP2pService;->mWfdAutoConnectEnabled:Z
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 3536
    return-void
.end method
