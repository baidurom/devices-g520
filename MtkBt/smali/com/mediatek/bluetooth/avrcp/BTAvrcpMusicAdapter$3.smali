.class Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;
.super Landroid/content/BroadcastReceiver;
.source "BTAvrcpMusicAdapter.java"


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
    .line 1323
    iput-object p1, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1326
    const/4 v1, 0x1

    .line 1327
    .local v1, eventId:I
    const/4 v2, 0x0

    .line 1328
    .local v2, status:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, action:Ljava/lang/String;
    const-string v3, "MMI_AVRCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BT][AVRCP] onReceive mStatusListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1334
    invoke-static {p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->updateMusicTrackInfo(Landroid/content/Intent;)V

    .line 1335
    const/4 v1, 0x2

    .line 1337
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->passNotifyMsg(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1338
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive EVENT_TRACK_CHANGED fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1341
    invoke-static {p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->updateMusicTrackInfo(Landroid/content/Intent;)V

    .line 1342
    const/4 v1, 0x1

    .line 1343
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->passNotifyMsg(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1344
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive EVENT_PLAYBACK_STATUS_CHANGED fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_2
    const/4 v1, 0x2

    .line 1348
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->passNotifyMsg(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1349
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive EVENT_TRACK_CHANGED fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1352
    :cond_3
    const-string v3, "com.android.music.quitplayback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1353
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] action equals BTAvrcpMusicAdapter.QUIT_PLAYBACK"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1354
    :cond_4
    const-string v3, "com.android.music.queuechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1355
    invoke-static {p2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->updateMusicTrackInfo(Landroid/content/Intent;)V

    .line 1356
    const/16 v1, 0x9

    .line 1357
    iget-object v3, p0, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter$3;->this$0:Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/mediatek/bluetooth/avrcp/BTAvrcpMusicAdapter;->passNotifyMsg(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1358
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive EVENT_NOW_PLAYING_CONTENT_CHANGED fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    :cond_5
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1361
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive action equals ACTION_SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1362
    :cond_6
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    const-string v3, "MMI_AVRCP"

    const-string v4, "[BT][AVRCP] onReceive action equals ACTION_SCREEN_ON"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
