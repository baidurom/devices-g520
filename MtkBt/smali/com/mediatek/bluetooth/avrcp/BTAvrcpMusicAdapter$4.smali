.class Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;
.super Ljava/lang/Object;
.source "BTAvrcpMusicAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1372
    const/4 v1, 0x0

    .line 1373
    .local v1, interval:I
    const/4 v0, 0x0

    .line 1375
    .local v0, bReg:Z
    const-string v2, "MMI_AVRCP"

    const-string v3, "[BT][AVRCP][b] PlayService onServiceConnected className:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v2, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    #setter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$002(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1378
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 1381
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP][b] PlayService onServiceDisconnected className:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    #getter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mMusicService:Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;
    invoke-static {v0}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$100(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;)Lcom/mediatek/bluetooth/avrcp/IBTAvrcpMusic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    const-string v0, "MMI_AVRCP"

    const-string v1, "[BT][AVRCP][b] unregistercallback "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$4;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->mPlayService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->access$002(Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1389
    return-void
.end method
