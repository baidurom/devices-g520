.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private chooseDedicatedType()I
    .locals 12

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 2031
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    .line 2032
    .local v5, tm:Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 2033
    .local v4, isSimAbsent:Z
    const/4 v3, 0x0

    .line 2034
    .local v3, isGPRSDisabled:Z
    const/4 v0, 0x0

    .line 2043
    .local v0, dataEnabled:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 2044
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Settings:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2048
    .local v6, wifiInfo:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2049
    const-string v8, "Tethering"

    const-string v9, "trun off dedicated pdp due to wifi connected"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 2067
    .end local v6           #wifiInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v7

    .line 2054
    .restart local v6       #wifiInfo:Landroid/net/NetworkInfo;
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v7, v7, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v7}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v7

    const/4 v9, 0x4

    invoke-interface {v7, v9}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2055
    .local v2, hipriInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    move v7, v8

    .line 2056
    goto :goto_0

    .line 2059
    :cond_1
    if-nez v0, :cond_2

    .line 2060
    const-string v7, "Tethering"

    const-string v8, "trunOffUpstreamMobileConnection due to data disabled"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    .end local v2           #hipriInfo:Landroid/net/NetworkInfo;
    .end local v6           #wifiInfo:Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    const/4 v7, -0x1

    goto :goto_0

    .line 2063
    :catch_0
    move-exception v1

    .line 2064
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 21
    .parameter "tryCell"

    .prologue
    .line 2072
    const/4 v14, -0x1

    .line 2073
    .local v14, upType:I
    const/4 v8, 0x0

    .line 2075
    .local v8, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 2079
    :try_start_0
    const-string v17, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]chooseUpstreamType has upstream iface types:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$6200(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 2081
    .local v13, netType:Ljava/lang/Integer;
    const-string v17, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2118
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v13           #netType:Ljava/lang/Integer;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 2085
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2087
    const-string v17, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] UsbInternet is ON, transitionTo ErrorState"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2089
    monitor-exit v18

    .line 2192
    .end local v7           #i$:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 2091
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    const/16 v14, 0x28

    .line 2118
    :cond_2
    :goto_2
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2121
    const-string v17, "Tethering"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]chooseUpstreamType("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), preferredApn ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/connectivity/Tethering;->access$6500(Lcom/android/server/connectivity/Tethering;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", got type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v14, v0, :cond_3

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v14, v0, :cond_8

    .line 2128
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    .line 2139
    :cond_4
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    .line 2191
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    goto :goto_1

    .line 2099
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$6200(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2100
    .restart local v13       #netType:Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 2102
    .local v10, info:Landroid/net/NetworkInfo;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 2104
    :goto_5
    if-eqz v10, :cond_7

    :try_start_4
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2105
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "Ipv6TetherMaster"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mIpv6FeatureEnable:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/connectivity/Tethering;->hasIpv6Address(I)Z
    invoke-static {v0, v14}, Lcom/android/server/connectivity/Tethering;->access$6400(Lcom/android/server/connectivity/Tethering;I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2109
    const-string v17, "Tethering"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "we have no ipv6 address, upType:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2110
    const/4 v14, -0x1

    goto/16 :goto_2

    .line 2129
    .end local v10           #info:Landroid/net/NetworkInfo;
    .end local v13           #netType:Ljava/lang/Integer;
    :cond_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_4

    .line 2136
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    goto/16 :goto_3

    .line 2151
    :cond_9
    const/16 v17, 0x28

    move/from16 v0, v17

    if-ne v14, v0, :cond_b

    .line 2152
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 2154
    .local v9, ifaces:[Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v9

    .line 2158
    :goto_6
    move-object v2, v9

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_7
    if-ge v7, v11, :cond_5

    aget-object v15, v2, v7

    .line 2159
    .local v15, usbiface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v15}, Lcom/android/server/connectivity/Tethering;->access$6600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object v8, v15

    .line 2158
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 2155
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v11           #len$:I
    .end local v15           #usbiface:Ljava/lang/String;
    .local v7, i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 2156
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "Tethering"

    const-string v18, "Error listing Usb Internet Interfaces"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2163
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #ifaces:[Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    .line 2165
    .local v12, linkProperties:Landroid/net/LinkProperties;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v12

    .line 2167
    :goto_8
    if-eqz v12, :cond_5

    .line 2168
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v4

    .line 2170
    .local v4, dnsServers:[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    .line 2171
    .local v5, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v5, :cond_e

    .line 2173
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    .line 2175
    .local v16, v4Dnses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2176
    .local v3, dnsAddress:Ljava/net/InetAddress;
    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 2177
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2180
    .end local v3           #dnsAddress:Ljava/net/InetAddress;
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e

    .line 2181
    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    .line 2185
    .end local v16           #v4Dnses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 2186
    :catch_1
    move-exception v6

    .line 2187
    .restart local v6       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static/range {v18 .. v18}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v18

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4

    .line 2166
    .end local v4           #dnsServers:[Ljava/lang/String;
    .end local v5           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    goto :goto_8

    .line 2103
    .end local v12           #linkProperties:Landroid/net/LinkProperties;
    .restart local v10       #info:Landroid/net/NetworkInfo;
    .restart local v13       #netType:Ljava/lang/Integer;
    :catch_3
    move-exception v17

    goto/16 :goto_5
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1890
    packed-switch p1, :pswitch_data_0

    .line 1897
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1892
    :pswitch_1
    const-string v0, "enableDUNAlways"

    goto :goto_0

    .line 1895
    :pswitch_2
    const-string v0, "enableHIPRI"

    goto :goto_0

    .line 1890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 7
    .parameter "ifaceName"

    .prologue
    const/16 v6, 0xc

    .line 2195
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MSM_TetherModeAlive]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] notifying tethered with iface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5802(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 2198
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2199
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MSM_TetherUtil] setMtuByInterface 1500:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5dc

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->setMtuByInterface(Ljava/lang/String;I)Z

    .line 2204
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    move-object v2, v1

    .line 2205
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2206
    .local v2, sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2207
    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2212
    .end local v1           #o:Ljava/lang/Object;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2213
    if-eqz p1, :cond_4

    .line 2214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2218
    :goto_1
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying tethered with change iface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #o:Ljava/lang/Object;
    move-object v2, v1

    .line 2222
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2223
    .restart local v2       #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2, v6, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 2216
    .end local v1           #o:Ljava/lang/Object;
    .end local v2           #sm:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "empty,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2225
    :cond_5
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1887
    const/4 v0, 0x0

    return v0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1998
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2006
    const-string v3, "TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2007
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2019
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mWifiIface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$5900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2020
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2021
    .local v1, mtu:I
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MSM_TetherUtil] setMtuByInterface mtu:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/NetworkUtils;->setMtuByInterface(Ljava/lang/String;I)Z

    .line 2025
    .end local v1           #mtu:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2026
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1999
    :catch_0
    move-exception v0

    .line 2000
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2008
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v3, "Ipv6TetherMaster"

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2009
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2014
    :catch_1
    move-exception v0

    .line 2015
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2012
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1935
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4604(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    .line 1936
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 1938
    :try_start_0
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MSM_TetherModeAlive]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Try to stopUsingNetworkFeature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v1, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4302(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 1946
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1951
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1952
    const-string v4, "TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1968
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$4900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1980
    :goto_1
    :try_start_2
    const-string v4, "Tethering"

    const-string v5, "[MSM_TetherModeAlive] turnOnMasterTetherSettings updateDns"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->updateDns()V
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)V

    .line 1984
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbInternetEnable:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1985
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbInternetDnsServers:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move v2, v3

    .line 1994
    :goto_3
    return v2

    .line 1956
    :cond_1
    :try_start_3
    const-string v4, "Ipv6TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1957
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 1969
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1971
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1972
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$4900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1973
    :catch_2
    move-exception v1

    .line 1974
    .local v1, ee:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_3

    .line 1988
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v5, v5, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setDnsForwarders([Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 1990
    :catch_3
    move-exception v0

    .line 1991
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_3
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 7
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    .line 1900
    const/4 v3, 0x1

    .line 1901
    .local v3, retValue:Z
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return v4

    .line 1902
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v5

    if-eq p1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 1903
    :cond_2
    const/4 v2, 0x3

    .line 1904
    .local v2, result:I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, enableString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1907
    :try_start_0
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MSM_TetherModeAlive]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Try to startUsingNetworkFeature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v1, v6}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1913
    :goto_1
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MSM_TetherModeAlive]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] startUsingNetworkFeature result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    packed-switch v2, :pswitch_data_0

    .line 1927
    const/4 v3, 0x0

    :goto_2
    move v4, v3

    .line 1931
    goto :goto_0

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MSM_TetherModeAlive]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Failed to startUsingNetworkFeature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1917
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4302(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    goto :goto_2

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
