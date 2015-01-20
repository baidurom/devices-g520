.class public Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;
.super Ljava/lang/Object;
.source "WfdAutoConnectInfoList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdAutoConnectInfoList"

.field private static final WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;


# instance fields
.field private mInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sortedInfos:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/wfd_auto_connect_info.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->sortedInfos:Ljava/util/TreeMap;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->getInfoList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    .line 55
    .local v0, i:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    .end local v0           #i:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    .line 66
    .local v1, info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    iget-object v2, v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v1           #info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    .locals 1
    .parameter "peerAddress"

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    goto :goto_0
.end method

.method public getInfoList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public loadWfdAutoConnectInfo()V
    .locals 9

    .prologue
    .line 81
    const/4 v4, 0x0

    .line 83
    .local v4, str:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 84
    iget-object v6, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->sortedInfos:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->clear()V

    .line 87
    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v5, wfdFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    .end local v5           #wfdFile:Ljava/io/File;
    :goto_0
    return-void

    .line 91
    .restart local v5       #wfdFile:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v6, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 94
    :goto_1
    if-eqz v4, :cond_1

    .line 95
    new-instance v3, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    invoke-direct {v3, v4}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    iget-object v6, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v7, v3, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v6, "WfdAutoConnectInfoList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadWfdAutoConnectInfo put info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 100
    .end local v3           #info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    :cond_1
    const-string v6, "WfdAutoConnectInfoList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadWfdAutoConnectInfo Ok, mInfos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #wfdFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Ljava/io/IOException;
    const-string v6, "WfdAutoConnectInfoList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadWfdAutoConnectInfo Error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remove(Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;)Z
    .locals 3
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sortWfdAutoConnectInfo()V
    .locals 6

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, address:Ljava/lang/String;
    const/4 v1, 0x0

    .line 142
    .local v1, info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    const/4 v3, -0x1

    .line 143
    .local v3, netId:I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v4, tmpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 148
    .restart local v0       #address:Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    check-cast v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    .line 149
    .restart local v1       #info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    iget v3, v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->sortedInfos:Ljava/util/TreeMap;

    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v2, sbuf:Ljava/lang/StringBuffer;
    iget-object v3, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    .line 75
    .local v1, info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    .end local v1           #info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    const-string v1, "WfdAutoConnectInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update failed, info==null, or peerAddress==null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    .line 178
    .local v0, connectInfo:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    const-string v1, "WfdAutoConnectInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update prepare to update info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v1, "WfdAutoConnectInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update prepare to update connectInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v0, :cond_2

    .line 181
    iget v1, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    iput v1, v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->networkId:I

    .line 182
    new-instance v1, Landroid/net/wifi/p2p/wfd/WfdInfo;

    iget-object v2, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/wfd/WfdInfo;-><init>(Landroid/net/wifi/p2p/wfd/WfdInfo;)V

    iput-object v1, v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->wfd:Landroid/net/wifi/p2p/wfd/WfdInfo;

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->peerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "WfdAutoConnectInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update Ok, mInfos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateWfdAutoConnectInfoFile()V
    .locals 11

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, address:Ljava/lang/String;
    const/4 v5, 0x0

    .line 112
    .local v5, info:Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;
    :try_start_0
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, wfdFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    const-string v8, "WfdAutoConnectInfoList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WfdAutoConnectInfoList Create File:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " successfully!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    sget-object v8, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->WFD_AUTO_CONNECT_INFO_FILE:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, fw:Ljava/io/FileWriter;
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 122
    .local v2, bw:Ljava/io/BufferedWriter;
    iget-object v8, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 123
    .local v6, it:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 125
    iget-object v8, p0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfoList;->mInfos:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;

    move-object v5, v0

    .line 126
    const-string v8, "WfdAutoConnectInfoList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateWfdAutoConnectInfoFile info :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v5}, Landroid/net/wifi/p2p/wfd/WfdAutoConnectInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 130
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v6           #it:Ljava/util/Iterator;
    .end local v7           #wfdFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 135
    .local v3, e:Ljava/io/IOException;
    const-string v8, "WfdAutoConnectInfoList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateWfdAutoConnectInfoFile Error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 133
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v6       #it:Ljava/util/Iterator;
    .restart local v7       #wfdFile:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
