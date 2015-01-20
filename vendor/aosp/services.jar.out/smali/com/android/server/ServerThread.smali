.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 119
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 120
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 122
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 123
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1121
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1123
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 112
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return-void
.end method

.method public run()V
    .locals 136

    .prologue
    .line 134
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 137
    const-string v3, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 138
    new-instance v3, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 142
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 145
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 146
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 150
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v114

    .line 152
    .local v114, shutdownAction:Ljava/lang/String;
    if-eqz v114, :cond_0

    invoke-virtual/range {v114 .. v114}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, v114

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_11

    const/16 v108, 0x1

    .line 156
    .local v108, reboot:Z
    :goto_0
    invoke-virtual/range {v114 .. v114}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_12

    .line 157
    const/4 v3, 0x1

    invoke-virtual/range {v114 .. v114}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v107

    .line 162
    .local v107, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v108

    move-object/from16 v1, v107

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 166
    .end local v107           #reason:Ljava/lang/String;
    .end local v108           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 167
    .local v81, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v81

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v80, 0x0

    .line 169
    .local v80, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 171
    .local v16, headless:Z
    const/16 v45, 0x0

    .line 172
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v68, 0x0

    .line 173
    .local v68, contentService:Landroid/content/ContentService;
    const/16 v88, 0x0

    .line 174
    .local v88, lights:Lcom/android/server/LightsService;
    const/16 v106, 0x0

    .line 175
    .local v106, power:Lcom/android/server/PowerManagerService;
    const/16 v54, 0x0

    .line 176
    .local v54, battery:Lcom/android/server/BatteryService;
    const/16 v126, 0x0

    .line 177
    .local v126, vibrator:Lcom/android/server/VibratorService;
    const/16 v50, 0x0

    .line 178
    .local v50, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 179
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 180
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v98, 0x0

    .line 181
    .local v98, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v66, 0x0

    .line 182
    .local v66, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v133, 0x0

    .line 183
    .local v133, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v131, 0x0

    .line 184
    .local v131, wifi:Lcom/android/server/WifiService;
    const/16 v113, 0x0

    .line 185
    .local v113, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v105, 0x0

    .line 186
    .local v105, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 187
    .local v4, context:Landroid/content/Context;
    const/16 v135, 0x0

    .line 188
    .local v135, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v56, 0x0

    .line 189
    .local v56, bluetooth:Landroid/server/BluetoothService;
    const/16 v58, 0x0

    .line 190
    .local v58, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v61, 0x0

    .line 191
    .local v61, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v42, 0x0

    .line 192
    .local v42, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v74, 0x0

    .line 193
    .local v74, dock:Lcom/android/server/DockObserver;
    const/16 v124, 0x0

    .line 194
    .local v124, usb:Lcom/android/server/usb/UsbService;
    const/16 v111, 0x0

    .line 195
    .local v111, serial:Lcom/android/server/SerialService;
    const/16 v122, 0x0

    .line 196
    .local v122, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v109, 0x0

    .line 197
    .local v109, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v118, 0x0

    .line 198
    .local v118, throttle:Lcom/android/server/ThrottleService;
    const/16 v100, 0x0

    .line 199
    .local v100, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v63, 0x0

    .line 200
    .local v63, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v87, 0x0

    .line 202
    .local v87, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v44, 0x0

    .line 204
    .local v44, Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    const/16 v82, 0x0

    .line 207
    .local v82, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_55

    .line 212
    .end local v106           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 214
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static/range {v80 .. v80}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 217
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "telephony.registry2"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    const/4 v10, 0x1

    invoke-direct {v9, v4, v10}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 226
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 228
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 231
    .local v71, cryptState:Ljava/lang/String;
    const/16 v104, 0x0

    .line 232
    .local v104, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 233
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v104, 0x1

    .line 240
    :cond_1
    :goto_3
    if-eqz v80, :cond_15

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v104

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v105

    .line 243
    const/16 v84, 0x0

    .line 245
    .local v84, firstBoot:Z
    :try_start_2
    invoke-interface/range {v105 .. v105}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v84

    .line 249
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 251
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 255
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v46, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .local v46, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_56

    move-object/from16 v45, v46

    .line 262
    .end local v46           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x1

    move/from16 v0, v80

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v68

    .line 266
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 269
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v89, Lcom/android/server/LightsService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 272
    .end local v88           #lights:Lcom/android/server/LightsService;
    .local v89, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v89

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_57

    .line 274
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 276
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v127, Lcom/android/server/VibratorService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_58

    .line 278
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .local v127, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v89

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 284
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_59

    .line 286
    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 288
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 292
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_17

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v84, :cond_18

    const/4 v3, 0x1

    :goto_9
    move/from16 v0, v104

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v135

    .line 296
    const-string v3, "window"

    move-object/from16 v0, v135

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v87

    .line 298
    const-string v3, "input"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v135

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 305
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 306
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .line 349
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v89           #lights:Lcom/android/server/LightsService;
    .end local v104           #onlyCore:Z
    .restart local v88       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v72, 0x0

    .line 350
    .local v72, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v115, 0x0

    .line 351
    .local v115, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v85, 0x0

    .line 352
    .local v85, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v51, 0x0

    .line 353
    .local v51, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v102, 0x0

    .line 354
    .local v102, notification:Lcom/android/server/NotificationManagerService;
    const/16 v129, 0x0

    .line 355
    .local v129, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v90, 0x0

    .line 356
    .local v90, location:Lcom/android/server/LocationManagerService;
    const/16 v69, 0x0

    .line 357
    .local v69, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v120, 0x0

    .line 358
    .local v120, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v92, 0x0

    .line 359
    .local v92, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v76, 0x0

    .line 360
    .local v76, dreamy:Landroid/service/dreams/DreamManagerService;
    const/16 v117, 0x0

    .line 363
    .local v117, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_2

    .line 365
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v86, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v86

    move-object/from16 v1, v135

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 367
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .local v86, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_54

    move-object/from16 v85, v86

    .line 373
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 382
    :cond_2
    :goto_d
    :try_start_e
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 388
    :goto_e
    :try_start_f
    invoke-interface/range {v105 .. v105}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 394
    :goto_f
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403e6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_53

    .line 401
    :goto_10
    const/4 v3, 0x1

    move/from16 v0, v80

    if-eq v0, v3, :cond_21

    .line 402
    const/16 v96, 0x0

    .line 403
    .local v96, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 409
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v97, Lcom/android/server/MountService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7

    .line 411
    .end local v96           #mountService:Lcom/android/server/MountService;
    .local v97, mountService:Lcom/android/server/MountService;
    :try_start_12
    const-string v3, "mount"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_52

    move-object/from16 v96, v97

    .line 418
    .end local v97           #mountService:Lcom/android/server/MountService;
    .restart local v96       #mountService:Lcom/android/server/MountService;
    :cond_3
    :goto_11
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v93, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 420
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v93, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_14
    const-string v3, "lock_settings"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_51

    move-object/from16 v92, v93

    .line 426
    .end local v93           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v73, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 428
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v73, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_16
    const-string v3, "device_policy"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_50

    move-object/from16 v72, v73

    .line 434
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v116, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v116

    move-object/from16 v1, v135

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 436
    .end local v115           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v116, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_18
    const-string v3, "statusbar"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4f

    move-object/from16 v115, v116

    .line 442
    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v115       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 450
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 452
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 458
    :goto_16
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v121, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v121

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_d

    .line 460
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v121, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1c
    const-string v3, "textservices"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4e

    move-object/from16 v120, v121

    .line 466
    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v99, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v99

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_e

    .line 468
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v99, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v3, "netstats"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4d

    move-object/from16 v12, v99

    .line 474
    .end local v99           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f

    .line 478
    .end local v98           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_4c

    .line 484
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v134, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 486
    .end local v133           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v134, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_22
    const-string v3, "wifip2p"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4b

    move-object/from16 v133, v134

    .line 492
    .end local v134           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v133       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v132, Lcom/android/server/WifiService;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_11

    .line 494
    .end local v131           #wifi:Lcom/android/server/WifiService;
    .local v132, wifi:Lcom/android/server/WifiService;
    :try_start_24
    const-string v3, "wifi"

    move-object/from16 v0, v132

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4a

    move-object/from16 v131, v132

    .line 500
    .end local v132           #wifi:Lcom/android/server/WifiService;
    .restart local v131       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v67, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_12

    .line 503
    .end local v66           #connectivity:Lcom/android/server/ConnectivityService;
    .local v67, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_26
    const-string v3, "connectivity"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 504
    move-object/from16 v0, v67

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 505
    move-object/from16 v0, v67

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 506
    invoke-virtual/range {v131 .. v131}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 507
    invoke-virtual/range {v133 .. v133}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_49

    move-object/from16 v66, v67

    .line 513
    .end local v67           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v66       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v113

    .line 515
    const-string v3, "servicediscovery"

    move-object/from16 v0, v113

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 522
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v119, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 524
    .end local v118           #throttle:Lcom/android/server/ThrottleService;
    .local v119, throttle:Lcom/android/server/ThrottleService;
    :try_start_29
    const-string v3, "throttle"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_48

    move-object/from16 v118, v119

    .line 531
    .end local v119           #throttle:Lcom/android/server/ThrottleService;
    .restart local v118       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 543
    :goto_1f
    if-eqz v96, :cond_4

    .line 544
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 548
    :cond_4
    if-eqz v45, :cond_5

    .line 549
    :try_start_2b
    invoke-virtual/range {v45 .. v45}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 555
    :cond_5
    :goto_20
    if-eqz v68, :cond_6

    .line 556
    :try_start_2c
    invoke-virtual/range {v68 .. v68}, Landroid/content/ContentService;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17

    .line 562
    :cond_6
    :goto_21
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v103, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v103

    move-object/from16 v1, v115

    move-object/from16 v2, v88

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_18

    .line 564
    .end local v102           #notification:Lcom/android/server/NotificationManagerService;
    .local v103, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2e
    const-string v3, "notification"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 565
    move-object/from16 v0, v103

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_47

    move-object/from16 v102, v103

    .line 571
    .end local v103           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v102       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_19

    .line 579
    :goto_23
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v91, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1a

    .line 581
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .local v91, location:Lcom/android/server/LocationManagerService;
    :try_start_31
    const-string v3, "location"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_46

    move-object/from16 v90, v91

    .line 587
    .end local v91           #location:Lcom/android/server/LocationManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v70, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1b

    .line 589
    .end local v69           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v70, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_33
    const-string v3, "country_detector"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_45

    move-object/from16 v69, v70

    .line 595
    .end local v70           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v69       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 604
    :goto_26
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v3, "search_engine"

    new-instance v9, Landroid/server/search/SearchEngineManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 613
    :goto_27
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 620
    :goto_28
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 623
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-nez v16, :cond_7

    .line 625
    new-instance v130, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v130

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1f

    .line 626
    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v130, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_38
    const-string v3, "wallpaper"

    move-object/from16 v0, v130

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_44

    move-object/from16 v129, v130

    .line 633
    .end local v130           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_7
    :goto_29
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 635
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 646
    :cond_8
    :goto_2a
    const/16 v53, 0x0

    .line 648
    .local v53, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-class v3, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v3, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v53, v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_22

    .line 653
    :goto_2b
    :try_start_3b
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioProfileService = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz v53, :cond_9

    .line 655
    const-string v3, "audioprofile"

    invoke-interface/range {v53 .. v53}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 665
    :cond_9
    :goto_2c
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v75, Lcom/android/server/DockObserver;

    move-object/from16 v0, v75

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_23

    .end local v74           #dock:Lcom/android/server/DockObserver;
    .local v75, dock:Lcom/android/server/DockObserver;
    move-object/from16 v74, v75

    .line 673
    .end local v75           #dock:Lcom/android/server/DockObserver;
    .restart local v74       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_24

    .line 681
    :goto_2e
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v125, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .line 684
    .end local v124           #usb:Lcom/android/server/usb/UsbService;
    .local v125, usb:Lcom/android/server/usb/UsbService;
    :try_start_3f
    const-string v3, "usb"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_43

    move-object/from16 v124, v125

    .line 690
    .end local v125           #usb:Lcom/android/server/usb/UsbService;
    .restart local v124       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v112, Lcom/android/server/SerialService;

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 693
    .end local v111           #serial:Lcom/android/server/SerialService;
    .local v112, serial:Lcom/android/server/SerialService;
    :try_start_41
    const-string v3, "serial"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_42

    move-object/from16 v111, v112

    .line 699
    .end local v112           #serial:Lcom/android/server/SerialService;
    .restart local v111       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v123, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .end local v122           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v123, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v122, v123

    .line 707
    .end local v123           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v122       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_31
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 715
    :goto_32
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v52, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 717
    .end local v51           #appWidget:Lcom/android/server/AppWidgetService;
    .local v52, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_45
    const-string v3, "appwidget"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_41

    move-object/from16 v51, v52

    .line 723
    .end local v52           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v51       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_33
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v110, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2a

    .end local v109           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v110, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v109, v110

    .line 732
    .end local v110           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v109       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_34
    const/16 v48, 0x0

    .line 734
    .local v48, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_47
    const-class v3, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v48, v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 739
    :goto_35
    :try_start_48
    const-string v3, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsMgr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v48

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz v48, :cond_a

    .line 741
    const-string v3, "mtk-agps"

    invoke-interface/range {v48 .. v48}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2c

    .line 750
    :cond_a
    :goto_36
    const/16 v79, 0x0

    .line 752
    .local v79, epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :try_start_49
    const-class v3, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v3, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-object/from16 v79, v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_2d
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2e

    .line 756
    :goto_37
    :try_start_4a
    const-string v3, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "epoMgr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v79

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz v79, :cond_b

    .line 758
    const-string v3, "mtk-epo-client"

    invoke-interface/range {v79 .. v79}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 767
    :cond_b
    :goto_38
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 778
    :goto_39
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 786
    :goto_3a
    :try_start_4d
    const-string v3, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-class v3, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v3, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMIObserver;

    move-object/from16 v44, v0
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 815
    :goto_3b
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v101, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .end local v100           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v101, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v100, v101

    .line 822
    .end local v101           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v100       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3c
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v64, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_33

    .line 824
    .end local v63           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v64, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_50
    const-string v3, "commontime_management"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_40

    move-object/from16 v63, v64

    .line 830
    .end local v64           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v63       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3d
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_34

    .line 836
    :goto_3e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 839
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v77, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_35

    .line 842
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v77, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_53
    const-string v3, "dreams"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_3f

    move-object/from16 v76, v77

    .line 862
    .end local v48           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v53           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v79           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .end local v96           #mountService:Lcom/android/server/MountService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_c
    :goto_3f
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 863
    .local v28, safeMode:Z
    if-eqz v28, :cond_1d

    .line 864
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 866
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 868
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 877
    :goto_40
    :try_start_54
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_36

    .line 882
    :goto_41
    if-eqz v72, :cond_d

    .line 884
    :try_start_55
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_37

    .line 890
    :cond_d
    :goto_42
    if-eqz v102, :cond_e

    .line 892
    :try_start_56
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_38

    .line 899
    :cond_e
    :goto_43
    :try_start_57
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_39

    .line 904
    :goto_44
    if-eqz v28, :cond_f

    .line 905
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 911
    :cond_f
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v65

    .line 912
    .local v65, config:Landroid/content/res/Configuration;
    new-instance v95, Landroid/util/DisplayMetrics;

    invoke-direct/range {v95 .. v95}, Landroid/util/DisplayMetrics;-><init>()V

    .line 913
    .local v95, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v128

    check-cast v128, Landroid/view/WindowManager;

    .line 914
    .local v128, w:Landroid/view/WindowManager;
    invoke-interface/range {v128 .. v128}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v95

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 915
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v65

    move-object/from16 v1, v95

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 917
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 919
    :try_start_58
    invoke-interface/range {v105 .. v105}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_3a

    .line 924
    :goto_45
    :try_start_59
    invoke-virtual/range {v92 .. v92}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_3b

    .line 930
    :goto_46
    move-object/from16 v17, v4

    .line 931
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 932
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 933
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 934
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 935
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v66

    .line 936
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v74

    .line 937
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v124

    .line 938
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v118

    .line 939
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v122

    .line 940
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v51

    .line 941
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v129

    .line 942
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v85

    .line 943
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v109

    .line 944
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v90

    .line 945
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v69

    .line 946
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v100

    .line 947
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v63

    .line 948
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v120

    .line 949
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v115

    .line 950
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v76

    .line 951
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v87

    .line 952
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v56

    .line 953
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    move-object/from16 v41, v117

    .line 960
    .local v41, thermalF:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1084
    :try_start_5a
    const-string v3, "DMAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v55

    .line 1085
    .local v55, binder:Landroid/os/IBinder;
    if-eqz v55, :cond_20

    .line 1086
    invoke-static/range {v55 .. v55}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v47

    .line 1087
    .local v47, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface/range {v47 .. v47}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v94

    .line 1088
    .local v94, locked:Z
    if-eqz v115, :cond_1f

    if-eqz v102, :cond_1f

    if-eqz v7, :cond_1f

    .line 1089
    new-instance v83, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v83

    move-object/from16 v1, v115

    move-object/from16 v2, v102

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_3c

    .line 1090
    .end local v82           #fdm:Lcom/android/server/FrameworkDmService;
    .local v83, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_5b
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dm state lock is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v94

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    if-nez v94, :cond_1e

    const/4 v3, 0x1

    :goto_47
    move-object/from16 v0, v83

    invoke-virtual {v0, v3}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_3e

    move-object/from16 v82, v83

    .line 1103
    .end local v47           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v55           #binder:Landroid/os/IBinder;
    .end local v83           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v94           #locked:Z
    .restart local v82       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_48
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1104
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_10
    new-instance v3, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Lcom/android/server/ServerHangDetectThread;->getInstance()Lcom/android/server/ServerHangDetectThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServerHangDetectThread;->start()V

    .line 1113
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1114
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 153
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #thermalF:Ljava/lang/Object;
    .end local v42           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v44           #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v51           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v61           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v63           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v65           #config:Landroid/content/res/Configuration;
    .end local v66           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v68           #contentService:Landroid/content/ContentService;
    .end local v69           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v74           #dock:Lcom/android/server/DockObserver;
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #factoryTest:I
    .end local v81           #factoryTestStr:Ljava/lang/String;
    .end local v82           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v87           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v95           #metrics:Landroid/util/DisplayMetrics;
    .end local v100           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v102           #notification:Lcom/android/server/NotificationManagerService;
    .end local v105           #pm:Landroid/content/pm/IPackageManager;
    .end local v109           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v111           #serial:Lcom/android/server/SerialService;
    .end local v113           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v115           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v118           #throttle:Lcom/android/server/ThrottleService;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v122           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v124           #usb:Lcom/android/server/usb/UsbService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .end local v128           #w:Landroid/view/WindowManager;
    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v131           #wifi:Lcom/android/server/WifiService;
    .end local v133           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v135           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_11
    const/16 v108, 0x0

    goto/16 :goto_0

    .line 159
    .restart local v108       #reboot:Z
    :cond_12
    const/16 v107, 0x0

    .restart local v107       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 167
    .end local v107           #reason:Ljava/lang/String;
    .end local v108           #reboot:Z
    .restart local v81       #factoryTestStr:Ljava/lang/String;
    :cond_13
    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v80

    goto/16 :goto_2

    .line 235
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v42       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v44       #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    .restart local v58       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v61       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v63       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v66       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v68       #contentService:Landroid/content/ContentService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v74       #dock:Lcom/android/server/DockObserver;
    .restart local v80       #factoryTest:I
    .restart local v82       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v87       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    .restart local v98       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v104       #onlyCore:Z
    .restart local v105       #pm:Landroid/content/pm/IPackageManager;
    .restart local v109       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v111       #serial:Lcom/android/server/SerialService;
    .restart local v113       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v118       #throttle:Lcom/android/server/ThrottleService;
    .restart local v122       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v124       #usb:Lcom/android/server/usb/UsbService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    .restart local v131       #wifi:Lcom/android/server/WifiService;
    .restart local v133       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v135       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_14
    :try_start_5c
    const-string v3, "1"

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v104, 0x1

    goto/16 :goto_3

    .line 240
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 258
    .restart local v84       #firstBoot:Z
    :catch_0
    move-exception v78

    .line 259
    .local v78, e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_5c} :catch_1

    goto/16 :goto_6

    .line 344
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v78           #e:Ljava/lang/Throwable;
    .end local v84           #firstBoot:Z
    .end local v104           #onlyCore:Z
    :catch_1
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .line 345
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v78, e:Ljava/lang/RuntimeException;
    :goto_4a
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 263
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v78           #e:Ljava/lang/RuntimeException;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v104       #onlyCore:Z
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 293
    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :cond_17
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 307
    :cond_19
    const/4 v3, 0x1

    move/from16 v0, v80

    if-ne v0, v3, :cond_1a

    .line 308
    :try_start_5d
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 344
    :catch_2
    move-exception v78

    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto :goto_4a

    .line 310
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :cond_1a
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v57, Landroid/server/BluetoothService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_2

    .line 312
    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .local v57, bluetooth:Landroid/server/BluetoothService;
    :try_start_5e
    const-string v3, "bluetooth"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    invoke-virtual/range {v57 .. v57}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 315
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 316
    new-instance v59, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v59

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_5a

    .line 317
    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v59, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_5f
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    invoke-virtual/range {v57 .. v57}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_5b

    move-object/from16 v58, v59

    .line 323
    .end local v59           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v58       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1b
    :try_start_60
    new-instance v62, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v62

    move-object/from16 v1, v57

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_5a

    .line 324
    .end local v61           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v62, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_61
    const-string v3, "bluetooth_socket"

    move-object/from16 v0, v62

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 329
    new-instance v43, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_61} :catch_5c

    .line 330
    .end local v42           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v43, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_62
    const-string v3, "bluetooth_profile_manager"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v49

    .line 336
    .local v49, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v60

    .line 338
    .local v60, bluetoothOn:I
    if-nez v49, :cond_1c

    if-eqz v60, :cond_1c

    .line 339
    invoke-virtual/range {v57 .. v57}, Landroid/server/BluetoothService;->enable()Z
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_62} :catch_5d

    :cond_1c
    move-object/from16 v42, v43

    .end local v43           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v42       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v61, v62

    .end local v62           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v61       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v56, v57

    .end local v57           #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 368
    .end local v49           #airplaneModeOn:I
    .end local v60           #bluetoothOn:I
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v89           #lights:Lcom/android/server/LightsService;
    .end local v104           #onlyCore:Z
    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v69       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v102       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v115       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v78

    .line 369
    .local v78, e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 376
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v78

    .line 377
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 383
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v78

    .line 384
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 389
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v78

    .line 390
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 412
    .end local v78           #e:Ljava/lang/Throwable;
    .restart local v96       #mountService:Lcom/android/server/MountService;
    :catch_7
    move-exception v78

    .line 413
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 421
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v78

    .line 422
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 429
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v78

    .line 430
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 437
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v78

    .line 438
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 445
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v78

    .line 446
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 453
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v78

    .line 454
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 461
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v78

    .line 462
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 469
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v78

    .line 470
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 479
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v78

    move-object/from16 v8, v98

    .line 480
    .end local v98           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 487
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v78

    .line 488
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 495
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v78

    .line 496
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 508
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v78

    .line 509
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 517
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v78

    .line 518
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 526
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v78

    .line 527
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 534
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v78

    .line 535
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 550
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v78

    .line 551
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 557
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v78

    .line 558
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 566
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v78

    .line 567
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 574
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v78

    .line 575
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 582
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v78

    .line 583
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 590
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v78

    .line 591
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 598
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v78

    .line 599
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 607
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v78

    .line 608
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 616
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v78

    .line 617
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 628
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v78

    .line 629
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 637
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v78

    .line 638
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 650
    .end local v78           #e:Ljava/lang/Throwable;
    .restart local v53       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_21
    move-exception v78

    .line 651
    .local v78, e:Ljava/lang/Exception;
    :try_start_63
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_22

    goto/16 :goto_2b

    .line 658
    .end local v78           #e:Ljava/lang/Exception;
    :catch_22
    move-exception v78

    .line 659
    .local v78, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 668
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v78

    .line 669
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 676
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v78

    .line 677
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 685
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v78

    .line 686
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 694
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v78

    .line 695
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 702
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v78

    .line 703
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 710
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v78

    .line 711
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 718
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v78

    .line 719
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 725
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v78

    .line 726
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 736
    .end local v78           #e:Ljava/lang/Throwable;
    .restart local v48       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_2b
    move-exception v78

    .line 737
    .local v78, e:Ljava/lang/Exception;
    :try_start_64
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_2c

    goto/16 :goto_35

    .line 744
    .end local v78           #e:Ljava/lang/Exception;
    :catch_2c
    move-exception v78

    .line 745
    .local v78, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 753
    .end local v78           #e:Ljava/lang/Throwable;
    .restart local v79       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_2d
    move-exception v78

    .line 754
    .local v78, e:Ljava/lang/Exception;
    :try_start_65
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hugo_app systemServer Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_2e

    goto/16 :goto_37

    .line 761
    .end local v78           #e:Ljava/lang/Exception;
    :catch_2e
    move-exception v78

    .line 762
    .local v78, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 769
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v78

    .line 770
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 781
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v78

    .line 782
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 789
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v78

    .line 790
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v78

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    .line 817
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v78

    .line 818
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 825
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v78

    .line 826
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 832
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v78

    .line 833
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 843
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v78

    .line 844
    .restart local v78       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 871
    .end local v48           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v53           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v78           #e:Ljava/lang/Throwable;
    .end local v79           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .end local v96           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_1d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_40

    .line 878
    :catch_36
    move-exception v78

    .line 879
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 885
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v78

    .line 886
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 893
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v78

    .line 894
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 900
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v78

    .line 901
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 920
    .end local v78           #e:Ljava/lang/Throwable;
    .restart local v65       #config:Landroid/content/res/Configuration;
    .restart local v95       #metrics:Landroid/util/DisplayMetrics;
    .restart local v128       #w:Landroid/view/WindowManager;
    :catch_3a
    move-exception v78

    .line 921
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 925
    .end local v78           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v78

    .line 926
    .restart local v78       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1091
    .end local v78           #e:Ljava/lang/Throwable;
    .end local v82           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v17       #contextF:Landroid/content/Context;
    .restart local v18       #batteryF:Lcom/android/server/BatteryService;
    .restart local v19       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v20       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v21       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v22       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v23       #dockF:Lcom/android/server/DockObserver;
    .restart local v24       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v25       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v26       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v27       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v29       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v30       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v31       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v32       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v33       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v34       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v35       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v36       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v37       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v38       #dreamyF:Landroid/service/dreams/DreamManagerService;
    .restart local v39       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v40       #bluetoothF:Landroid/server/BluetoothService;
    .restart local v41       #thermalF:Ljava/lang/Object;
    .restart local v47       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v55       #binder:Landroid/os/IBinder;
    .restart local v83       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v94       #locked:Z
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_47

    .line 1093
    .end local v83           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v82       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_1f
    :try_start_66
    const-string v3, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_3c

    goto/16 :goto_48

    .line 1098
    .end local v47           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v55           #binder:Landroid/os/IBinder;
    .end local v94           #locked:Z
    :catch_3c
    move-exception v78

    .line 1099
    .local v78, e:Ljava/lang/Exception;
    :goto_60
    const-string v3, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 1096
    .end local v78           #e:Ljava/lang/Exception;
    .restart local v55       #binder:Landroid/os/IBinder;
    :cond_20
    :try_start_67
    const-string v3, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_3c

    goto/16 :goto_48

    .line 246
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #thermalF:Ljava/lang/Object;
    .end local v51           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v55           #binder:Landroid/os/IBinder;
    .end local v65           #config:Landroid/content/res/Configuration;
    .end local v69           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v95           #metrics:Landroid/util/DisplayMetrics;
    .end local v102           #notification:Lcom/android/server/NotificationManagerService;
    .end local v115           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v128           #w:Landroid/view/WindowManager;
    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v98       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104       #onlyCore:Z
    :catch_3d
    move-exception v3

    goto/16 :goto_5

    .line 1098
    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v82           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v84           #firstBoot:Z
    .end local v98           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v104           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17       #contextF:Landroid/content/Context;
    .restart local v18       #batteryF:Lcom/android/server/BatteryService;
    .restart local v19       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v20       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v21       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v22       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v23       #dockF:Lcom/android/server/DockObserver;
    .restart local v24       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v25       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v26       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v27       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v28       #safeMode:Z
    .restart local v29       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v30       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v31       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v32       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v33       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v34       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v35       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v36       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v37       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v38       #dreamyF:Landroid/service/dreams/DreamManagerService;
    .restart local v39       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v40       #bluetoothF:Landroid/server/BluetoothService;
    .restart local v41       #thermalF:Ljava/lang/Object;
    .restart local v47       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v51       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v55       #binder:Landroid/os/IBinder;
    .restart local v65       #config:Landroid/content/res/Configuration;
    .restart local v69       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v83       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #locked:Z
    .restart local v95       #metrics:Landroid/util/DisplayMetrics;
    .restart local v102       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v115       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #w:Landroid/view/WindowManager;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3e
    move-exception v78

    move-object/from16 v82, v83

    .end local v83           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v82       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_60

    .line 843
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #thermalF:Ljava/lang/Object;
    .end local v47           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v55           #binder:Landroid/os/IBinder;
    .end local v65           #config:Landroid/content/res/Configuration;
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v94           #locked:Z
    .end local v95           #metrics:Landroid/util/DisplayMetrics;
    .end local v128           #w:Landroid/view/WindowManager;
    .restart local v48       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v53       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v79       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v96       #mountService:Lcom/android/server/MountService;
    :catch_3f
    move-exception v78

    move-object/from16 v76, v77

    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto/16 :goto_5f

    .line 825
    .end local v63           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v64       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_40
    move-exception v78

    move-object/from16 v63, v64

    .end local v64           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v63       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5e

    .line 718
    .end local v48           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v51           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v79           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v52       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_41
    move-exception v78

    move-object/from16 v51, v52

    .end local v52           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v51       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5d

    .line 694
    .end local v111           #serial:Lcom/android/server/SerialService;
    .restart local v112       #serial:Lcom/android/server/SerialService;
    :catch_42
    move-exception v78

    move-object/from16 v111, v112

    .end local v112           #serial:Lcom/android/server/SerialService;
    .restart local v111       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5c

    .line 685
    .end local v124           #usb:Lcom/android/server/usb/UsbService;
    .restart local v125       #usb:Lcom/android/server/usb/UsbService;
    :catch_43
    move-exception v78

    move-object/from16 v124, v125

    .end local v125           #usb:Lcom/android/server/usb/UsbService;
    .restart local v124       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5b

    .line 628
    .end local v53           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v130       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v78

    move-object/from16 v129, v130

    .end local v130           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5a

    .line 590
    .end local v69           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v70       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_45
    move-exception v78

    move-object/from16 v69, v70

    .end local v70           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v69       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_59

    .line 582
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .restart local v91       #location:Lcom/android/server/LocationManagerService;
    :catch_46
    move-exception v78

    move-object/from16 v90, v91

    .end local v91           #location:Lcom/android/server/LocationManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_58

    .line 566
    .end local v102           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #notification:Lcom/android/server/NotificationManagerService;
    :catch_47
    move-exception v78

    move-object/from16 v102, v103

    .end local v103           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v102       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_57

    .line 526
    .end local v118           #throttle:Lcom/android/server/ThrottleService;
    .restart local v119       #throttle:Lcom/android/server/ThrottleService;
    :catch_48
    move-exception v78

    move-object/from16 v118, v119

    .end local v119           #throttle:Lcom/android/server/ThrottleService;
    .restart local v118       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_56

    .line 508
    .end local v66           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v67       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_49
    move-exception v78

    move-object/from16 v66, v67

    .end local v67           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v66       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_55

    .line 495
    .end local v131           #wifi:Lcom/android/server/WifiService;
    .restart local v132       #wifi:Lcom/android/server/WifiService;
    :catch_4a
    move-exception v78

    move-object/from16 v131, v132

    .end local v132           #wifi:Lcom/android/server/WifiService;
    .restart local v131       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_54

    .line 487
    .end local v133           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v134       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4b
    move-exception v78

    move-object/from16 v133, v134

    .end local v134           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v133       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_53

    .line 479
    :catch_4c
    move-exception v78

    goto/16 :goto_52

    .line 469
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v98       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4d
    move-exception v78

    move-object/from16 v12, v99

    .end local v99           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_51

    .line 461
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v121       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4e
    move-exception v78

    move-object/from16 v120, v121

    .end local v121           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_50

    .line 437
    .end local v115           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v116       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4f
    move-exception v78

    move-object/from16 v115, v116

    .end local v116           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v115       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4f

    .line 429
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_50
    move-exception v78

    move-object/from16 v72, v73

    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4e

    .line 421
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v93       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_51
    move-exception v78

    move-object/from16 v92, v93

    .end local v93           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4d

    .line 412
    .end local v96           #mountService:Lcom/android/server/MountService;
    .restart local v97       #mountService:Lcom/android/server/MountService;
    :catch_52
    move-exception v78

    move-object/from16 v96, v97

    .end local v97           #mountService:Lcom/android/server/MountService;
    .restart local v96       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4c

    .line 398
    .end local v96           #mountService:Lcom/android/server/MountService;
    :catch_53
    move-exception v3

    goto/16 :goto_10

    .line 368
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_54
    move-exception v78

    move-object/from16 v85, v86

    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4b

    .line 344
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v51           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v69           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v72           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v76           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v85           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #location:Lcom/android/server/LocationManagerService;
    .end local v92           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v102           #notification:Lcom/android/server/NotificationManagerService;
    .end local v115           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v117           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v120           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v129           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v106       #power:Lcom/android/server/PowerManagerService;
    :catch_55
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v106

    .end local v106           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4a

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v71       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v104       #onlyCore:Z
    :catch_56
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v45, v46

    .end local v46           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4a

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    :catch_57
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v54

    .end local v54           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    :catch_58
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :catch_59
    move-exception v78

    move-object/from16 v7, v50

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v57       #bluetooth:Landroid/server/BluetoothService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :catch_5a
    move-exception v78

    move-object/from16 v56, v57

    .end local v57           #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .end local v58           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v57       #bluetooth:Landroid/server/BluetoothService;
    .restart local v59       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :catch_5b
    move-exception v78

    move-object/from16 v58, v59

    .end local v59           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v58       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v56, v57

    .end local v57           #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .end local v61           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v57       #bluetooth:Landroid/server/BluetoothService;
    .restart local v62       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :catch_5c
    move-exception v78

    move-object/from16 v61, v62

    .end local v62           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v61       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v56, v57

    .end local v57           #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .end local v42           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v56           #bluetooth:Landroid/server/BluetoothService;
    .end local v61           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v88           #lights:Lcom/android/server/LightsService;
    .end local v126           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v57       #bluetooth:Landroid/server/BluetoothService;
    .restart local v62       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v89       #lights:Lcom/android/server/LightsService;
    .restart local v127       #vibrator:Lcom/android/server/VibratorService;
    :catch_5d
    move-exception v78

    move-object/from16 v42, v43

    .end local v43           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v42       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v61, v62

    .end local v62           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v61       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v56, v57

    .end local v57           #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v126, v127

    .end local v127           #vibrator:Lcom/android/server/VibratorService;
    .restart local v126       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v88, v89

    .end local v89           #lights:Lcom/android/server/LightsService;
    .restart local v88       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4a

    .line 258
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v50       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v54       #battery:Lcom/android/server/BatteryService;
    :catch_5e
    move-exception v78

    move-object/from16 v45, v46

    .end local v46           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_49

    .end local v50           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v54           #battery:Lcom/android/server/BatteryService;
    .end local v71           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v104           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v51       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v69       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v72       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v76       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v85       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v102       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v115       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v117       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v120       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_21
    move-object/from16 v8, v98

    .end local v98           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3f
.end method
