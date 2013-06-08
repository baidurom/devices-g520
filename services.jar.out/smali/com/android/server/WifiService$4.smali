.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1181
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 6
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 1149
    iget-object v2, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1152
    .local v0, wifiSleepPolicy:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiSleepPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-ne v0, v5, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v1

    .line 1156
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1162
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, action:Ljava/lang/String;
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onReceive, action="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_idle_ms"

    const-wide/32 v12, 0x2bf20

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1058
    .local v2, idleMillis:J
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stay_on_while_plugged_in"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1061
    .local v6, stayAwakeConditions:I
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1063
    const-string v10, "WifiService"

    const-string v11, "ACTION_SCREEN_ON"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v11}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1066
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 1067
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 1068
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;Z)V

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1071
    const-string v10, "WifiService"

    const-string v11, "ACTION_SCREEN_OFF"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 1074
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 1081
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v6, v10}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1083
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    iget-object v10, v10, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v11, :cond_2

    .line 1084
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v2

    iget-object v14, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1088
    :cond_2
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1091
    :cond_3
    const-string v10, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1092
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1093
    :cond_4
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1101
    const-string v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1103
    .local v4, pluggedType:I
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)I

    move-result v10

    invoke-direct {p0, v6, v10}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v6, v4}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v8, v10, v2

    .line 1109
    .local v8, triggerTime:J
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1115
    .end local v8           #triggerTime:J
    :cond_5
    if-nez v4, :cond_6

    .line 1116
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 1117
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 1118
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :cond_6
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v10, v4}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1118
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1121
    .end local v4           #pluggedType:I
    :cond_7
    const-string v10, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1122
    const-string v10, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1124
    .local v5, state:I
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1125
    .end local v5           #state:I
    :cond_8
    const-string v10, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1126
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const-string v11, "phoneinECMState"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2402(Lcom/android/server/WifiService;Z)Z

    .line 1127
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 1128
    :cond_9
    const-string v10, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1129
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    const/4 v11, 0x0

    #setter for: Lcom/android/server/WifiService;->mNotificationShown:Z
    invoke-static {v10, v11}, Lcom/android/server/WifiService;->access$2502(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 1130
    :cond_a
    const-string v10, "com.android.server.WifiManager.action.CHECK_CONNECTION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1131
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .line 1132
    .local v7, supplicantState:Landroid/net/wifi/SupplicantState;
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "supplicantState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    sget-object v10, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v10}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v10

    invoke-virtual {v7}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    if-gt v10, v11, :cond_b

    invoke-virtual {v7}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v10

    sget-object v11, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    if-le v10, v11, :cond_0

    .line 1135
    :cond_b
    iget-object v10, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->showGPRSDialog()V
    invoke-static {v10}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
