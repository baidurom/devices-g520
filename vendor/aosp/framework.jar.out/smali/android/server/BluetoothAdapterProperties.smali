.class Landroid/server/BluetoothAdapterProperties;
.super Ljava/lang/Object;
.source "BluetoothAdapterProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    .line 35
    iput-object p1, p0, Landroid/server/BluetoothAdapterProperties;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    .line 37
    return-void
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAllProperties()V
    .locals 13

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    const-string v11, "Need BLUETOOTH permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 82
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAdapterPropertiesNative()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 85
    .local v7, properties:[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 86
    const-string v9, "BluetoothAdapterProperties"

    const-string v10, "*Error*: GetAdapterProperties returned NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    array-length v9, v7

    if-ge v2, v9, :cond_7

    .line 91
    aget-object v5, v7, v2

    .line 92
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 93
    .local v6, newValue:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 94
    const-string v9, "BluetoothAdapterProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:Adapter Property at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_2
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 98
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v8, str:Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 100
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_4

    .line 101
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 104
    :cond_4
    if-lez v4, :cond_5

    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_5
    :goto_4
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 77
    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    .end local v7           #properties:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 108
    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #newValue:Ljava/lang/String;
    .restart local v7       #properties:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    :try_start_2
    aget-object v6, v7, v2

    goto :goto_4

    .line 114
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    const-string v10, "ObjectPath"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dev_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized getObjectPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    monitor-enter p0

    const/4 v2, 0x0

    .line 52
    .local v2, path:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    const-string v4, "ObjectPath"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    iget-object v3, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v3}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dev_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .end local v1           #adapterPath:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "BluetoothAdapterProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getObjectPath():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-object v2

    .line 58
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    const-string v4, "ObjectPath"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "UUIDs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
