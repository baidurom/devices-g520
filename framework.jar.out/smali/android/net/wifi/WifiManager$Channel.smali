.class public Landroid/net/wifi/WifiManager$Channel;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$Channel$WifiHandler;
    }
.end annotation


# static fields
.field private static final INVALID_KEY:I = -0x1


# instance fields
.field mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;

.field mHandler:Landroid/net/wifi/WifiManager$Channel$WifiHandler;

.field private mListenerKey:I

.field private mListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)V
    .locals 1
    .parameter "looper"
    .parameter "l"

    .prologue
    .line 1326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;

    .line 1333
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    .line 1334
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerKey:I

    .line 1327
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1328
    new-instance v0, Landroid/net/wifi/WifiManager$Channel$WifiHandler;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiManager$Channel$WifiHandler;-><init>(Landroid/net/wifi/WifiManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mHandler:Landroid/net/wifi/WifiManager$Channel$WifiHandler;

    .line 1329
    iput-object p2, p0, Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;

    .line 1330
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager$Channel;)Landroid/net/wifi/WifiManager$ChannelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$ChannelListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1325
    iput-object p1, p0, Landroid/net/wifi/WifiManager$Channel;->mChannelListener:Landroid/net/wifi/WifiManager$ChannelListener;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiManager$Channel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiManager$Channel;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method putListener(Ljava/lang/Object;)I
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, -0x1

    .line 1402
    if-nez p1, :cond_0

    move v0, v1

    .line 1410
    :goto_0
    return v0

    .line 1404
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1406
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerKey:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerKey:I

    .line 1407
    .local v0, key:I
    if-eq v0, v1, :cond_1

    .line 1408
    iget-object v1, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1409
    monitor-exit v2

    goto :goto_0

    .end local v0           #key:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeListener(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 1414
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .line 1418
    :goto_0
    return-object v0

    .line 1415
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1416
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1417
    .local v0, listener:Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/WifiManager$Channel;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1418
    monitor-exit v2

    goto :goto_0

    .line 1419
    .end local v0           #listener:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
